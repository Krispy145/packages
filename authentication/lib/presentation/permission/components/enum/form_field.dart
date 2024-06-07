import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/enum.dart";
import "package:forms/presentation/components/text/form_field.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class PermissionsFormField extends BaseFormField<PermissionsFormFieldStore> {
  const PermissionsFormField({
    super.key,
    required super.store,
  }) : super(type: FormFieldType.permissionsField, showTitle: false);

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DOTextFormField(
              showTitle: false,
              store: store.textFieldStore,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...store.optionsMap.entries.map((entry) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(entry.key.toTitleCase()),
                      Sizes.xs.spacer(),
                      DropdownButton(
                        value: store.optionsMap[entry.key],
                        alignment: Alignment.bottomCenter,
                        onChanged: (newValue) => store.updatePermission(entry.key, newValue ?? PermissionLevel.no),
                        items: store.options
                            .map(
                              (enumValue) => DropdownMenuItem<PermissionLevel>(
                                value: enumValue,
                                child: Text(enumValue.name),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  );
                }),
                if (store.currentValue != null)
                  TextButton(
                    onPressed: store.saveCurrentValues,
                    child: const Text("Save"),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
