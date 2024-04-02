// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';

// import 'store.dart';

// class ComponentThemeChangerView<T> extends StatelessWidget {
//   const ComponentThemeChangerView({
//     Key? key,
//     required this.store,
//   }) : super(key: key);

//   final ComponentThemeChangerStore<T> store;

//   @override
//   Widget build(BuildContext context) {
//     return Observer(builder: (context) {
//       return GridView.builder(
//         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//           maxCrossAxisExtent: 160,
//           crossAxisSpacing: 8,
//           mainAxisSpacing: 8,
//         ),
//         itemCount: store.mergedMap.length,
//         itemBuilder: (context, index) {
//           return Observer(
//             builder: (context) {
//               final mapEntry = store.mergedMap.entries.elementAt(index);
//               if (mapEntry.key.toLowerCase().contains('color')) {
//                 return ColorComponentGridTile(store: store, mapEntry: mapEntry, onMapEntryChanged: _changeEntry);
//               } else if (mapEntry.key.toLowerCase().contains("textstyle")) {
//                 return TextStyleComponentGridTile(store: store, mapEntry: mapEntry, onMapEntryChanged: _changeEntry);
//               } else if (mapEntry.key.toLowerCase().contains("padding") || mapEntry.key.toLowerCase().contains("margin")) {
//                 return EdgeInsetsComponentGridTile(store: store, mapEntry: mapEntry, onMapEntryChanged: _changeEntry);
//               } else if (mapEntry.value is double) {
//                 return DoubleComponentGridTile(store: store, mapEntry: mapEntry, onMapEntryChanged: _changeEntry);
//               } else if (mapEntry.value is bool) {
//                 return Observer(builder: (context) {
//                   return BoolComponentGridTile(store: store, mapEntry: mapEntry, onMapEntryChanged: _changeEntry);
//                 });
//               } else {
//                 return Text('${mapEntry.key} ${mapEntry.value}');
//               }
//             },
//           );
//         },
//       );
//     });
//   }

//   void _changeEntry(BuildContext context, MapEntry<String, dynamic> mapEntry) {
//     store.setMapEntry(mapEntry);
//     store.onUpdateComponentTheme(store.setMapEntryInMap());
//   }
// }

// // class ColorComponentGridTile extends BaseComponentGridTile {
// //   const ColorComponentGridTile({super.key, required super.store, required super.mapEntry, required super.onMapEntryChanged});

// //   @override
// //   String get name => "Color";

// //   @override
// //   void onTap(BuildContext context) {
// //     _showChangerDialog(
// //       context,
// //       Observer(
// //         builder: (context) => ColorChangerView(
// //           currentColorString: mapEntry.value,
// //           onColorChanged: (context, newColor) => onMapEntryChanged(context, MapEntry(mapEntry.key, newColor)),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TextStyleComponentGridTile extends BaseComponentGridTile {
// //   const TextStyleComponentGridTile({super.key, required super.store, required super.mapEntry, required super.onMapEntryChanged});

// //   @override
// //   String get name => "Text Style";

// //   @override
// //   void onTap(BuildContext context) {
// //     _showChangerDialog(
// //       context,
// //       TextStyleChangerView(
// //         currentTextStyleString: mapEntry.value,
// //         onTextStyleChanged: (context, newTextStyle) => onMapEntryChanged(context, MapEntry(mapEntry.key, newTextStyle)),
// //       ),
// //     );
// //   }
// // }

// // class EdgeInsetsComponentGridTile extends BaseComponentGridTile {
// //   const EdgeInsetsComponentGridTile({super.key, required super.store, required super.mapEntry, required super.onMapEntryChanged});

// //   @override
// //   String get name => "Edge Insets";

// //   @override
// //   void onTap(BuildContext context) {
// //     _showChangerDialog(
// //       context,
// //       EdgeInsetsChangerView(
// //         initialEdgeInsets: const EdgeInsetsConverter().fromJson(mapEntry.value),
// //         onEdgeInsetsChanged: (context, newEdgeInsets) => onMapEntryChanged(context, MapEntry(mapEntry.key, const EdgeInsetsConverter().toJson(newEdgeInsets))),
// //       ),
// //     );
// //   }
// // }

// // class DoubleComponentGridTile extends BaseComponentGridTile {
// //   const DoubleComponentGridTile({super.key, required super.store, required super.mapEntry, required super.onMapEntryChanged});

// //   @override
// //   String get name => "Double";

// //   @override
// //   void onTap(BuildContext context) {
// //     _showChangerDialog(
// //       context,
// //       DoubleChanger(
// //         currentDouble: mapEntry.value,
// //         onDoubleChanged: (context, newDouble) => onMapEntryChanged(context, MapEntry(mapEntry.key, newDouble)),
// //       ),
// //     );
// //   }
// // }

// // class BoolComponentGridTile extends BaseComponentGridTile {
// //   const BoolComponentGridTile({super.key, required super.store, required super.mapEntry, required super.onMapEntryChanged});

// //   @override
// //   String get name => "Bool";

// //   @override
// //   void onTap(BuildContext context) {
// //     // _showChangerDialog(
// //     //   context,
// //     //   DoubleChanger(
// //     //     currentDouble: mapEntry.value,
// //     //     onDoubleChanged: (context, newDouble) => onMapEntryChanged(context, MapEntry(mapEntry.key, newDouble)),
// //     //   ),
// //     // );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return DecoratedBox(
// //       decoration: BoxDecoration(
// //         color: Colors.grey[200],
// //         borderRadius: BorderRadius.circular(8),
// //       ),
// //       child: Center(
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Text(mapEntry.key),
// //             Observer(builder: (context) {
// //               return Switch(
// //                 // key: ValueKey(store.mergedMap),
// //                 value: mapEntry.value,
// //                 onChanged: (value) {
// //                   onMapEntryChanged(context, MapEntry(mapEntry.key, value));
// //                 },
// //               );
// //             })
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // abstract class BaseComponentGridTile<ParentModel> extends StatelessWidget {
// //   final ComponentThemeChangerStore<ParentModel> store;
// //   final MapEntry<String, dynamic> mapEntry;

// //   final String name = 'BaseComponentGridTile';

// //   final void Function(BuildContext context, MapEntry<String, dynamic> mapEntry) onMapEntryChanged;

// //   const BaseComponentGridTile({super.key, required this.store, required this.mapEntry, required this.onMapEntryChanged});

// //   void onTap(BuildContext context);

// //   Future<dynamic> _showChangerDialog(
// //     BuildContext context,
// //     Widget child,
// //   ) {
// //     return showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: Text('Change ${mapEntry.key}'),
// //         content: ConstrainedBox(
// //           constraints: BoxConstraints(
// //             maxWidth: context.screenWidth * 0.35,
// //             maxHeight: context.screenHeight * 0.75,
// //           ),
// //           child: child,
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () => onTap(context),
// //       child: DecoratedBox(
// //         decoration: BoxDecoration(
// //           color: Colors.grey[200],
// //           borderRadius: BorderRadius.circular(8),
// //         ),
// //         child: Center(
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [Text(mapEntry.key)],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
