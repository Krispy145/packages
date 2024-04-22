// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:forms/presentation/components/color/form_field.dart';
// import 'package:theme/data/models/borders/border_radius_model.dart';
// import 'package:utilities/helpers/tuples.dart';
// import 'package:utilities/sizes/spacers.dart';

// import 'store.dart';

// class FormsModelsView<T> extends StatelessWidget {
//   final FormsModelsStore<T> mapEditorStore;
//   final Widget? header;
//   final List<Pair<Type, Widget>> modelFieldBuilder;
//   const FormsModelsView({
//     super.key,
//     required this.mapEditorStore,
//     required this.modelFieldBuilder,
//     this.header,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Column(
//           children: [
//             Sizes.l.spacer(),
//             header ?? buildHeader(context),
//             Expanded(
//               child: Observer(
//                 builder: (context) {
//                   return SingleChildScrollView(
//                     child: _buildFormsModels(context, mapEditorStore.mapData, []),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//         Align(
//           alignment: Alignment.topLeft,
//           child: Padding(
//             padding: const EdgeInsets.all(8),
//             child: IconButton(
//               icon: const Icon(Icons.arrow_back),
//               onPressed: () => Navigator.of(context).pop(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget buildHeader(BuildContext context) {
//     return Text("${T}Upsert");
//   }

//   Widget _buildFormsModels(BuildContext context, Map<dynamic, dynamic> map, List<String> keys) {
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: map.entries.map((entry) {
//           final key = entry.key as String;
//           final value = entry.value;
//           final updatedKeys = List<String>.from(keys)..add(key);
//           final valueEditor = buildValueEditor(context, value, updatedKeys, mapEditorStore.updateValue);
//           if (valueEditor != null) {
//             return ExpansionTile(
//               title: Text(key.split('_').first),
//               expandedAlignment: Alignment.topLeft,
//               children: [Padding(padding: const EdgeInsets.only(left: 16), child: valueEditor)],
//             );
//           } else if (value is Map<dynamic, dynamic>) {
//             return buildExpansionTile(context, key, value, updatedKeys);
//           } else if (value is List<dynamic>) {
//             final listValues = value.map((e) => e).toList();
//             return ExpansionTile(
//               title: Text(key.split('_').first),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 16),
//                   child: Column(
//                     children: listValues.asMap().entries.map((entry) {
//                       final index = entry.key;
//                       final listUpdatedKeys = List<String>.from(updatedKeys)..add(index.toString());
//                       final listValue = entry.value;
//                       final listValueEditor = buildValueEditor(context, listValue, listUpdatedKeys, mapEditorStore.updateValue);
//                       if (listValueEditor != null) {
//                         return ExpansionTile(
//                           title: Text('Index: $index'),
//                           children: [Padding(padding: const EdgeInsets.only(left: 16), child: listValueEditor)],
//                         );
//                       } else if (listValue is Map<dynamic, dynamic>) {
//                         return buildExpansionTile(context, 'Index: $index', listValue, listUpdatedKeys);
//                       }
//                       return Text('Unsupported Type: $key');
//                     }).toList(),
//                   ),
//                 ),
//               ],
//             );
//           }
//           return Text('Unsupported Type: $key');
//         }).toList(),
//       ),
//     );
//   }

//   Widget buildExpansionTile(BuildContext context, String title, Map<dynamic, dynamic> map, List<String> keys) {
//     return ExpansionTile(
//       title: Text(title, style: Theme.of(context).textTheme.titleMedium),
//       children: [
//         Padding(padding: const EdgeInsets.only(left: 16), child: _buildFormsModels(context, map, keys)),
//       ],
//     );
//   }

//   /// This method is used to build the value editor for the map editor.
//   /// When calling the onChanged function, it passes the keys and the new value to the store.
//   /// Convert value from dynamic to the appropriate type when passing into the field
//   /// Convert the changed value back to the format from the map when calling the onChanged function
//   Widget? buildValueEditor(BuildContext context, dynamic value, List<String> keys, void Function(List<String> keys, dynamic value) onChanged) {
//     if (value is String) {
//       return TextFormField(
//         initialValue: value,
//         onChanged: (newValue) => onChanged(keys, newValue),
//       );
//     } else if (value is int) {
//       final store = IntFormFieldStore(
//         value: value,
//         onValueChanged: (newValue) => onChanged(keys, newValue),
//         title: keys.last,
//       );
//       return IntFormField(store: store);
//     } else if (value is bool) {
//       final store = BoolFormFieldStore(
//         value: value,
//         onValueChanged: (newValue) => onChanged(keys, newValue),
//         title: keys.last,
//       );
//       return BoolFormField(store: store);
//     }
//     return null;
//   }
// }



// // - if value is null, need to set it
// // - formField UI adapability per context (Can handle alot within theme though)
// // - How much code must be handled when creating a form
// // - How does the logic handle the changes in the field and referenece/communicate with the form store
// // - Map the fields, to be able to access the specific field store from the form store (e.g. formStore.fields['name'].value)