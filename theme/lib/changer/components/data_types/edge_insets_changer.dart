// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:utilities/helpers/extensions/build_context.dart';
// import 'package:utilities/helpers/extensions/string.dart';
// import 'package:utilities/sizes/spacers.dart';

// enum _EdgeInsetsTypes { all, symmetric, only, zero }

// class EdgeInsetsChangerView extends StatefulWidget {
//   late final EdgeInsets initial;
//   final void Function(BuildContext context, EdgeInsets newEdgeInsets) onEdgeInsetsChanged;

//   EdgeInsetsChangerView({super.key, required EdgeInsets? initialEdgeInsets, required this.onEdgeInsetsChanged}) {
//     initial = initialEdgeInsets ?? const EdgeInsets.all(0);
//   }

//   @override
//   State<EdgeInsetsChangerView> createState() => _EdgeInsetsChangerViewState();
// }

// class _EdgeInsetsChangerViewState extends State<EdgeInsetsChangerView> {
//   late EdgeInsets currentEdgeInsets;

//   _EdgeInsetsTypes edgeInsetsType = _EdgeInsetsTypes.all;

//   /// Used for top, vertical and all
//   late TextEditingController _topController;

//   /// Used for bottom
//   late TextEditingController _bottomController;

//   /// Used for left, horizontal
//   late TextEditingController _leftController;

//   /// Used for right
//   late TextEditingController _rightController;

//   @override
//   void initState() {
//     super.initState();
//     currentEdgeInsets = widget.initial;
//     initControllers();
//   }

//   double get currentTop => currentEdgeInsets.top;
//   double get currentBottom => currentEdgeInsets.bottom;
//   double get currentLeft => currentEdgeInsets.left;
//   double get currentRight => currentEdgeInsets.right;

//   void initControllers() {
//     _topController = TextEditingController(text: currentTop.toString());
//     _leftController = TextEditingController(text: currentLeft.toString());
//     _bottomController = TextEditingController(text: currentBottom.toString());
//     _rightController = TextEditingController(text: currentRight.toString());
//   }

//   void setControllersFromCurrentEdgeInsets() {
//     print("setControllersFromCurrentEdgeInsets: ${currentEdgeInsets.toString()}");
//     _topController.text = currentTop.toString();
//     _bottomController.text = currentBottom.toString();
//     _leftController.text = currentLeft.toString();
//     _rightController.text = currentRight.toString();
//     setState(() {});
//   }

//   void updateCurrentEdgeInsetsFromControllers() {
//     final double top = double.tryParse(_topController.text) ?? 0;
//     final double bottom = double.tryParse(_bottomController.text) ?? 0;
//     final double left = double.tryParse(_leftController.text) ?? 0;
//     final double right = double.tryParse(_rightController.text) ?? 0;
//     final EdgeInsets newEdgeInsets;
//     switch (edgeInsetsType) {
//       case _EdgeInsetsTypes.all:
//         newEdgeInsets = EdgeInsets.all(top);
//       case _EdgeInsetsTypes.symmetric:
//         newEdgeInsets = EdgeInsets.symmetric(vertical: top, horizontal: left);
//       case _EdgeInsetsTypes.only:
//         newEdgeInsets = EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
//       case _EdgeInsetsTypes.zero:
//         newEdgeInsets = EdgeInsets.zero;
//     }
//     setState(() => currentEdgeInsets = newEdgeInsets);
//   }

//   @override
//   void dispose() {
//     _topController.dispose();
//     _bottomController.dispose();
//     _leftController.dispose();
//     _rightController.dispose();
//     super.dispose();
//   }

//   bool get topEnabled => [_EdgeInsetsTypes.all, _EdgeInsetsTypes.symmetric, _EdgeInsetsTypes.only].contains(edgeInsetsType);
//   bool get bottomEnabled => edgeInsetsType == _EdgeInsetsTypes.only;
//   bool get leftEnabled => [_EdgeInsetsTypes.symmetric, _EdgeInsetsTypes.only].contains(edgeInsetsType);
//   bool get rightEnabled => edgeInsetsType == _EdgeInsetsTypes.only;

//   void onTypeChanged(_EdgeInsetsTypes value) {
//     edgeInsetsType = value;
//     switch (edgeInsetsType) {
//       case _EdgeInsetsTypes.all:
//         currentEdgeInsets = EdgeInsets.all(currentTop);
//       case _EdgeInsetsTypes.zero:
//         currentEdgeInsets = EdgeInsets.zero;
//       case _EdgeInsetsTypes.symmetric:
//         currentEdgeInsets = EdgeInsets.symmetric(vertical: currentTop, horizontal: currentLeft);
//       case _EdgeInsetsTypes.only:
//         currentEdgeInsets = EdgeInsets.only(top: currentTop, bottom: currentBottom, left: currentLeft, right: currentRight);
//     }
//     setControllersFromCurrentEdgeInsets();
//   }

//   void onTopChanged(String value) {
//     final double newTop = double.tryParse(value) ?? 0;
//     switch (edgeInsetsType) {
//       case _EdgeInsetsTypes.all:
//         currentEdgeInsets = EdgeInsets.all(newTop);
//       case _EdgeInsetsTypes.symmetric:
//         currentEdgeInsets = EdgeInsets.symmetric(vertical: newTop, horizontal: currentLeft);
//       case _EdgeInsetsTypes.only:
//         currentEdgeInsets = EdgeInsets.only(top: newTop, bottom: currentBottom, left: currentLeft, right: currentRight);
//       default:
//         break;
//     }
//     setControllersFromCurrentEdgeInsets();
//   }

//   void onLeftChanged(String value) {
//     final double newLeft = double.tryParse(value) ?? 0;
//     switch (edgeInsetsType) {
//       case _EdgeInsetsTypes.symmetric:
//         currentEdgeInsets = EdgeInsets.symmetric(vertical: currentTop, horizontal: newLeft);
//       case _EdgeInsetsTypes.only:
//         currentEdgeInsets = EdgeInsets.only(top: currentTop, bottom: currentBottom, left: newLeft, right: currentRight);
//       default:
//         break;
//     }
//     setControllersFromCurrentEdgeInsets();
//   }

//   void onRightChanged(String value) {
//     final double newRight = double.tryParse(value) ?? 0;
//     switch (edgeInsetsType) {
//       case _EdgeInsetsTypes.only:
//         currentEdgeInsets = EdgeInsets.only(top: currentTop, bottom: currentBottom, left: currentLeft, right: newRight);
//         break;
//       default:
//         break;
//     }
//     setControllersFromCurrentEdgeInsets();
//   }

//   void onBottomChanged(String value) {
//     final double newBottom = double.tryParse(value) ?? 0;
//     switch (edgeInsetsType) {
//       case _EdgeInsetsTypes.only:
//         currentEdgeInsets = EdgeInsets.only(top: currentTop, bottom: newBottom, left: currentLeft, right: currentRight);
//         break;
//       default:
//         break;
//     }
//     setControllersFromCurrentEdgeInsets();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(
//         maxWidth: context.screenWidth * 0.35,
//         maxHeight: context.screenHeight * 0.75,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SegmentedButton<_EdgeInsetsTypes>(
//               segments: _EdgeInsetsTypes.values.map((type) => ButtonSegment<_EdgeInsetsTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
//               selected: {edgeInsetsType},
//               onSelectionChanged: (Set<_EdgeInsetsTypes> newSelection) => onTypeChanged(newSelection.first),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _EdgeInsetsEditingTextField(controller: _topController, enabled: topEnabled, onChanged: onTopChanged),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _EdgeInsetsEditingTextField(controller: _leftController, enabled: leftEnabled, onChanged: onLeftChanged),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(color: Colors.red, padding: currentEdgeInsets, child: Container(width: 40, height: 40, color: Colors.grey)),
//                 ),
//                 _EdgeInsetsEditingTextField(controller: _rightController, enabled: rightEnabled, onChanged: onRightChanged),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _EdgeInsetsEditingTextField(controller: _bottomController, enabled: bottomEnabled, onChanged: onBottomChanged),
//               ],
//             ),
//             Sizes.m.spacer(),
//             ElevatedButton(
//               onPressed: () {
//                 widget.onEdgeInsetsChanged(context, currentEdgeInsets);
//               },
//               child: Text('Update to ${currentEdgeInsets.toString()}'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _EdgeInsetsEditingTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final bool enabled;
//   final void Function(String) onChanged;

//   const _EdgeInsetsEditingTextField({super.key, required this.controller, required this.enabled, required this.onChanged});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 100,
//       height: 40,
//       child: TextField(
//         decoration: const InputDecoration(
//           border: UnderlineInputBorder(),
//         ),
//         textAlign: TextAlign.center,
//         controller: controller,
//         keyboardType: TextInputType.number,
//         enabled: enabled,
//         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//         onChanged: onChanged,
//       ),
//     );
//   }
// }
