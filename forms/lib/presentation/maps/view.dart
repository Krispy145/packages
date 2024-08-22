import "package:flutter/material.dart";
import "package:forms/presentation/components/text/form_field.dart";
import "package:forms/presentation/components/text/store.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

import "../components/bool/form_field.dart";
import "../components/bool/store.dart";
import "../components/int/form_field.dart";
import "../components/int/store.dart";
import "store.dart";

class FormsMapView extends StatelessWidget {
  final FormsMapStore store;
  final Widget? header;

  const FormsMapView({super.key, required this.store, this.header});

  bool get isUpdating => store.value.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Sizes.l.spacer(),
            header ?? buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                child: _buildFormsMap(context, store.value, []),
              ),
            ),
            if (store.onValueSaved != null) ...[
              Sizes.l.spacer(),
              ElevatedButton(
                onPressed: () => _showConfirmationDialog(context),
                child: Text(isUpdating ? "Update" : "Create"),
              ),
            ],
            Sizes.xxxl.spacer(),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildHeader(BuildContext context) {
    return Text(store.value.toString());
  }

  Widget _buildFormsMap(
    BuildContext context,
    Map<dynamic, dynamic> map,
    List<String> keys,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: map.entries.map((entry) {
          final key = entry.key as String;
          final value = entry.value;
          final updatedKeys = List<String>.from(keys)..add(key);
          final valueEditor = buildValueEditor(context, value, updatedKeys, store.updateValue);
          if (valueEditor != null) {
            return ExpansionTile(
              title: Text(key.split("_").first),
              expandedAlignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: valueEditor,
                ),
              ],
            );
          } else if (value is Map<dynamic, dynamic>) {
            return buildExpansionTile(context, key, value, updatedKeys);
          } else if (value is List<dynamic>) {
            final listValues = value.map((e) => e).toList();
            return ExpansionTile(
              title: Text(key.split("_").first),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    children: listValues.asMap().entries.map((entry) {
                      final index = entry.key;
                      final listUpdatedKeys = List<String>.from(updatedKeys)..add(index.toString());
                      final listValue = entry.value;
                      final listValueEditor = buildValueEditor(
                        context,
                        listValue,
                        listUpdatedKeys,
                        store.updateValue,
                      );
                      if (listValueEditor != null) {
                        return ExpansionTile(
                          title: Text("Index: $index"),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: listValueEditor,
                            ),
                          ],
                        );
                      } else if (listValue is Map) {
                        return buildExpansionTile(
                          context,
                          "Index: $index",
                          listValue,
                          listUpdatedKeys,
                        );
                      }
                      return Text("Unsupported Type: $key");
                    }).toList(),
                  ),
                ),
              ],
            );
          }
          return Text("Unsupported Type: $key");
        }).toList(),
      ),
    );
  }

  Widget buildExpansionTile(
    BuildContext context,
    String title,
    Map<dynamic, dynamic> map,
    List<String> keys,
  ) {
    return ExpansionTile(
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: _buildFormsMap(context, map, keys),
        ),
      ],
    );
  }

  /// This method is used to build the value editor for the map editor.
  /// When calling the onChanged function, it passes the keys and the new value to the store.
  /// Convert value from dynamic to the appropriate type when passing into the field
  /// Convert the changed value back to the format from the map when calling the onChanged function
  Widget? buildValueEditor(
    BuildContext context,
    dynamic value,
    List<String> keys,
    void Function(List<String> keys, dynamic value) onChanged,
  ) {
    if (value is String) {
      final store = TextFormFieldStore(
        initialValue: value,
        onValueChanged: (newValue) => onChanged(keys, newValue),
        title: keys.last,
      );
      return DOTextFormField(
        store: store,
      );
    } else if (value is int) {
      final store = IntFormFieldStore(
        initialValue: value,
        onValueChanged: (newValue) => onChanged(keys, newValue),
        title: keys.last,
      );
      return IntFormField(store: store);
    } else if (value is bool) {
      final store = BoolFormFieldStore(
        initialValue: value,
        onValueChanged: (newValue) => onChanged(keys, newValue),
        title: keys.last,
      );
      return BoolFormField(store: store);
    }
    return null;
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Are you sure you want to submit?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                store.saveValue();
                Navigator.of(context).pop(true);
              },
              child: const Text("Submit"),
            ),
          ],
        );
      },
    ).then((result) {
      if (result == null) {
        return context.showSnackbar(
          SnackbarConfiguration.error(
            title: 'Error ${isUpdating ? 'updating' : 'creating'} Map Type',
          ),
        );
      }
      if (result == false) {
        return context.showSnackbar(
          SnackbarConfiguration.warning(
            title: 'Cancelled ${isUpdating ? 'update' : 'creation'} of Map Type',
          ),
        );
      }
      context.showSnackbar(
        SnackbarConfiguration.confirmation(
          title: '${isUpdating ? 'Updated' : 'Created'} Map Type',
        ),
      );
      return Navigator.of(context).pop<bool>(result);
    });
  }
}
