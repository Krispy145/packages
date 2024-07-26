import "package:flutter/material.dart";
import "package:utilities/sizes/spacers.dart";

class HoverableListTile extends StatefulWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final bool shouldMaintainSize;
  final Size? replacementSize;
  HoverableListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    required this.shouldMaintainSize,
    this.replacementSize,
  }) {
    assert(
      shouldMaintainSize == true && replacementSize != null || shouldMaintainSize == false && replacementSize == null,
      "shouldMaintainSize and replacementSize must be set together",
    );
  }

  @override
  State<HoverableListTile> createState() => _HoverableListTileState();
}

class _HoverableListTileState extends State<HoverableListTile> {
  bool isHovering = false;
  void _setHovering(bool value) {
    setState(() {
      isHovering = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _setHovering(true),
      onExit: (event) => _setHovering(false),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.shouldMaintainSize && (!isHovering || widget.leading == null))
            SizedBox(
              width: widget.replacementSize!.width,
              height: widget.replacementSize!.height,
            ),
          if (isHovering) widget.leading ?? const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(widget.title),
                if (widget.subtitle != null) ...[
                  Sizes.s.spacer(),
                  Text(widget.subtitle!),
                ],
              ],
            ),
          ),
          if (widget.shouldMaintainSize && (!isHovering || widget.trailing == null))
            SizedBox(
              width: widget.replacementSize!.width,
              height: widget.replacementSize!.height,
            ),
          if (isHovering) widget.trailing ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
