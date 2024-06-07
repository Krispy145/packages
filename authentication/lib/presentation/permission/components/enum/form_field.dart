import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/dropdown/form_field.dart";
import "package:forms/presentation/components/enum.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class PermissionsFormField extends BaseFormField<PermissionsFormFieldStore> {
  final double? maxWidth;
  const PermissionsFormField({
    super.key,
    required super.store,
    this.maxWidth,
  }) : super(type: FormFieldType.permissionsField, showTitle: false);

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.primary, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(vertical: 8),
          constraints: BoxConstraints(maxWidth: maxWidth ?? 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownFormField<String>(
                showTitle: false,
                store: store.collectionStore,
              ),
              ...store.permissions.map((permission) {
                return ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: (maxWidth ?? 300) / 1.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownFormField<PermissionLevel>(
                        store: permission,
                      ),
                      Sizes.xs.spacer(),
                    ],
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
