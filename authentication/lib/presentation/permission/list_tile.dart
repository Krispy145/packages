import "package:flutter/material.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:widgets/list_tile.dart";

class PermissionListTile extends StatelessWidget {
  final PermissionModel permission;
  final TextStyle? titleTextStyle;
  final void Function()? onTap;
  final bool isEditable;
  final bool expendWidth;
  final Future<void> Function(String id)? onDelete;
  const PermissionListTile({
    super.key,
    required this.permission,
    this.titleTextStyle,
    this.expendWidth = false,
    this.onTap,
  })  : isEditable = false,
        onDelete = null;

  const PermissionListTile.editable({
    super.key,
    required this.permission,
    this.titleTextStyle,
    required this.onDelete,
    this.expendWidth = false,
    this.onTap,
  }) : isEditable = true;

  @override
  Widget build(BuildContext context) {
    final _title = permission.role.camelCaseToTitleCase();
    if (isEditable) {
      return DOListTile.hoverable(
        onTap: onTap,
        title: _title,
        titleStyle: titleTextStyle,
        expandWidth: expendWidth,
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () async {
            final shouldDelete = await _confirmDelete(context);
            if (shouldDelete) {
              await onDelete?.call(permission.id);
            }
          },
        ),
      );
    }
    return DOListTile(
      onTap: onTap,
      expandWidth: expendWidth,
      title: _title,
      titleStyle: titleTextStyle,
    );
  }

  Future<bool> _confirmDelete(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Permission"),
          content: const Text("Are you sure you want to delete this permission?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
    return result ?? false;
  }
}
