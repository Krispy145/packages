import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

/// [PermissionBuilder] for the Permission View.
class PermissionBuilder extends StatelessWidget {
  final UUID userId;
  final PermissionModel? initialPermissionModel;

  /// [PermissionBuilder] constructor.
  PermissionBuilder({
    super.key,
    required this.userId,
    this.initialPermissionModel,
  });

  /// [store] is an instance of [PermissionStore], used in the [LoadStateBuilder].
  /// initialized in the constructor.
  late final PermissionStore store = PermissionStore(
    userId: userId,
    initialPermissionModel: initialPermissionModel,
  );
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Center(
          child: Text(
            store.isEmpty ? "Empty Permission" : "store.currentPermission?.name",
            style: context.textTheme.headlineMedium,
          ),
        );
      },
    );
  }
}
