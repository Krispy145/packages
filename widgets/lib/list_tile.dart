import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";

class DOListTile extends StatefulWidget {
  final String title;
  // final TextStyle? titleStyle;
  final String? subtitle;
  // final TextStyle? subtitleStyle;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final Widget? leading;
  final BoxConstraints leadingConstraints;
  final Widget? trailing;
  final BoxConstraints trailingConstraints;
  final bool shouldMaintainSize;
  final bool expandWidth;
  final Size? replacementSize;
  final bool isHoverable;
  final bool showOnHoverLeading;
  final bool showOnHoverTrailing;
  final EdgeInsets centrePadding;
  final EdgeInsets tilePadding;
  const DOListTile({
    super.key,
    required this.title,
    // this.titleStyle,
    this.onTap,
    this.onLongPress,
    this.subtitle,
    // this.subtitleStyle,
    this.leading,
    this.leadingConstraints = const BoxConstraints(maxHeight: 64),
    this.trailing,
    this.trailingConstraints = const BoxConstraints(maxHeight: 64),
    this.expandWidth = false,
    this.centrePadding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.tilePadding = const EdgeInsets.all(8),
  })  : isHoverable = false,
        shouldMaintainSize = false,
        showOnHoverLeading = false,
        showOnHoverTrailing = false,
        replacementSize = null;

  const DOListTile.hoverable({
    super.key,
    required this.title,
    this.onTap,
    this.onLongPress,
    this.shouldMaintainSize = false,
    this.subtitle,
    this.leading,
    this.leadingConstraints = const BoxConstraints(maxHeight: 64),
    this.showOnHoverLeading = false,
    this.trailing,
    this.trailingConstraints = const BoxConstraints(maxHeight: 64),
    this.showOnHoverTrailing = true,
    this.centrePadding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.tilePadding = const EdgeInsets.all(8),
    this.replacementSize,
    this.expandWidth = false,
  })  : isHoverable = true,
        assert(
          shouldMaintainSize == true && replacementSize != null || shouldMaintainSize == false && replacementSize == null,
          "shouldMaintainSize and replacementSize must be set together",
        );

  @override
  State<DOListTile> createState() => _DOListTileState();
}

class _DOListTileState extends State<DOListTile> {
  bool isHovering = false;
  void _setHovering(bool value) {
    setState(() {
      isHovering = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isHoverable) return _buildTile();
    return MouseRegion(
      onEnter: (event) => _setHovering(true),
      onExit: (event) => _setHovering(false),
      child: _buildTile(),
    );
  }

  Widget _buildTile() {
    return InkWell(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: context.colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: widget.tilePadding,
        child: Row(
          mainAxisSize: widget.expandWidth ? MainAxisSize.max : MainAxisSize.min,
          children: [
            if (widget.shouldMaintainSize && (!isHovering || widget.leading == null))
              SizedBox(
                width: widget.replacementSize!.width,
                height: widget.replacementSize!.height,
              ),
            if ((isHovering && widget.isHoverable) || !widget.isHoverable || !widget.showOnHoverLeading)
              ConstrainedBox(
                constraints: widget.leadingConstraints,
                child: widget.leading ?? const SizedBox.shrink(),
              ),
            _buildCenter(),
            if (widget.shouldMaintainSize && (!isHovering || widget.trailing == null))
              SizedBox(
                width: widget.replacementSize!.width,
                height: widget.replacementSize!.height,
              ),
            if ((isHovering && widget.isHoverable) || !widget.isHoverable || !widget.showOnHoverTrailing)
              ConstrainedBox(
                constraints: widget.trailingConstraints,
                child: widget.trailing ?? const SizedBox.shrink(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenter() {
    if (widget.expandWidth) {
      return Expanded(
        child: _CenterListWidget(widget: widget),
      );
    }
    return Flexible(
      child: _CenterListWidget(widget: widget),
    );
  }
}

class _CenterListWidget extends StatelessWidget {
  const _CenterListWidget({
    required this.widget,
  });

  final DOListTile widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.centrePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: context.textTheme.titleSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (widget.subtitle != null) ...[
            Sizes.xxs.spacer(),
            Text(
              widget.subtitle!,
              style: context.textTheme.labelMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}
