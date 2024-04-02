import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/bool_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_map/store.dart';
import 'package:theme/presentation/theme_changer/view.dart';
import 'package:utilities/logger/logger.dart';

class MapEditor extends StatelessWidget {
  final MapEditorStore mapEditorStore;

  const MapEditor({super.key, required this.mapEditorStore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeader(context),
              _buildMapEditor(context, mapEditorStore.mapData, []),
            ],
          ),
        ),
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
          final valueEditor = buildValueEditor(value, updatedKeys, (keys, updatedValue) {
            AppLogger.print("Calling on changed in MapEditorStore with $keys and $updatedValue", [PackageFeatures.theme]);
            mapEditorStore.updateValue(keys, updatedValue);
          });
          if (valueEditor != null) {
            return ExpansionTile(
              title: Text(key),
              children: [Padding(padding: const EdgeInsets.only(left: 16), child: valueEditor)],
            );
          } else if (value is Map<dynamic, dynamic>) {
            return _buildExpansionTile(context, key, value, updatedKeys);
          }
          // return ExpansionTile(
          //   title: Text(key.toString()),
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 16.0),
          //       child: buildValueEditor(value, updatedKeys, mapEditorStore.updateValue),
          //     )
          //   ],
          // );
          return const Text(
            'Unsupported Type',
            // style: TextStyle(fontStyle: FontSt),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildExpansionTile(BuildContext context, String title, Map<dynamic, dynamic> map, List<String> keys) {
    return ExpansionTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: _buildMapEditor(context, map, keys),
        ),
      ],
    );
  }

  /// This method is used to build the value editor for the map editor.
  /// When calling the onChanged function, it passes the keys and the new value to the store.
  /// Convert value from dynamic to the appropriate type when passing into the field
  /// Convert the changed value back to the format from the map when calling the onChanged function
  Widget? buildValueEditor(dynamic value, List<String> keys, void Function(List<String> keys, dynamic value) onChanged) {
    if (value is String) {
      for (final element in enumComponentProperties) {
        if (element.values.map((e) => e.name).contains(value)) {
          // if ((keys.last == 'type' && element.keyMatcher(keys[keys.length - 2])) || element.keyMatcher(keys.last) || element.values.map((e) => e.name).contains(value)) {
          AppLogger.print("ENUM: Found a match for ${element.name} -> $keys", [PackageFeatures.theme]);
          return SizedBox(
            height: 80,
            child: DropdownButton(
              value: element.values.firstWhere((element) => element.toString().toLowerCase() == value.toLowerCase()),
              onChanged: (newValue) => onChanged(keys, newValue.toString()),
              items: element.values.map((e) => DropdownMenuItem<Enum>(value: e, child: Text(e.toString()))).toList(),
            ),
          );
        }
      }
      return TextFormField(
        initialValue: value,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    } else if (value is int) {
      return TextFormField(
        initialValue: value.toString(),
        keyboardType: TextInputType.number,
        onChanged: (newValue) => onChanged(keys, int.parse(newValue)),
      );
    } else if (value is bool) {
      return BoolFormField(
        initialValue: value,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    }
    return null;
    // else {
    //   return const Text('Unsupported Type');
    // }
  }
}
