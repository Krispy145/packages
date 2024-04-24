import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:forms/presentation/components/text/form_field.dart';
import 'package:forms/presentation/components/text/store.dart';
import 'package:theme/presentation/changer/components/editing_fields/bool/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/bool/store.dart';
import 'package:theme/presentation/changer/components/editing_fields/int/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/int/store.dart';
import 'package:theme/presentation/changer/components/editing_map/store.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/sizes/spacers.dart';

class MapEditor extends StatelessWidget {
  final MapEditorStore mapEditorStore;
  final Widget? header;

  const MapEditor({super.key, required this.mapEditorStore, this.header});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Stack(
        children: [
          Column(
            children: [
              Sizes.l.spacer(),
              header ?? buildHeader(context),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildMapEditor(context, mapEditorStore.mapData, []),
                ),
              ),
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
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Text(mapEditorStore.mapData.toString());
  }

  Widget _buildMapEditor(BuildContext context, Map<dynamic, dynamic> map, List<String> keys) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: map.entries.map((entry) {
          final key = entry.key as String;
          final value = entry.value;
          final updatedKeys = List<String>.from(keys)..add(key);
          final valueEditor = buildValueEditor(context, value, updatedKeys, (keys, updatedValue) {
            AppLogger.print("Calling on changed in MapEditorStore with $keys and $updatedValue", [ThemeLoggers.changer]);
            mapEditorStore.updateValue(keys, updatedValue);
          });
          if (valueEditor != null) {
            return ExpansionTile(
              title: Text(key.split('_').first),
              expandedAlignment: Alignment.topLeft,
              children: [Padding(padding: const EdgeInsets.only(left: 16), child: valueEditor)],
            );
          } else if (value is Map<dynamic, dynamic>) {
            return buildExpansionTile(context, key, value, updatedKeys);
          } else if (value is List<dynamic>) {
            final listValues = value.map((e) => e).toList();
            return ExpansionTile(
              title: Text(key.split('_').first),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    children: listValues.asMap().entries.map((entry) {
                      final index = entry.key;
                      final listUpdatedKeys = List<String>.from(updatedKeys)..add(index.toString());
                      final listValue = entry.value;
                      final listValueEditor = buildValueEditor(context, listValue, listUpdatedKeys, (keys, updatedValue) {
                        AppLogger.print("Calling on changed in MapEditorStore with $keys and $updatedValue", [ThemeLoggers.changer]);
                        mapEditorStore.updateValue(keys, updatedValue);
                      });
                      if (listValueEditor != null) {
                        return ExpansionTile(
                          title: Text('Index: $index'),
                          children: [Padding(padding: const EdgeInsets.only(left: 16), child: listValueEditor)],
                        );
                      } else if (listValue is Map<dynamic, dynamic>) {
                        return buildExpansionTile(context, 'Index: $index', listValue, listUpdatedKeys);
                      }
                      return Text('Unsupported Type: $key');
                    }).toList(),
                  ),
                ),
              ],
            );
          }
          return Text('Unsupported Type: $key');
        }).toList(),
      ),
    );
  }

  Widget buildExpansionTile(BuildContext context, String title, Map<dynamic, dynamic> map, List<String> keys) {
    return ExpansionTile(
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      children: [
        Padding(padding: const EdgeInsets.only(left: 16), child: _buildMapEditor(context, map, keys)),
      ],
    );
  }

  /// This method is used to build the value editor for the map editor.
  /// When calling the onChanged function, it passes the keys and the new value to the store.
  /// Convert value from dynamic to the appropriate type when passing into the field
  /// Convert the changed value back to the format from the map when calling the onChanged function
  Widget? buildValueEditor(BuildContext context, dynamic value, List<String> keys, void Function(List<String> keys, dynamic value) onChanged) {
    if (value is String) {
      final store = TextFormFieldStore(
        value: value,
        onValueChanged: (newValue) => onChanged(keys, newValue),
        title: keys.last,
      );
      return DOTextFormField(
        store: store,
      );
    } else if (value is int) {
      final store = IntFormFieldStore(
        value: value,
        onValueChanged: (newValue) => onChanged(keys, newValue),
        title: keys.last,
      );
      return IntFormField(store: store);
    } else if (value is bool) {
      final store = BoolFormFieldStore(
        value: value,
        onValueChanged: (newValue) => onChanged(keys, newValue),
        title: keys.last,
      );
      return BoolFormField(store: store);
    }
    return null;
  }
}
