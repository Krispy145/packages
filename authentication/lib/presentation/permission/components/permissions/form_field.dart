import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/chips/form_field.dart";
import "package:forms/presentation/components/text/form_field.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class PermissionsFormField extends BaseFormField<PermissionsFormFieldStore> {
  PermissionsFormField({
    super.key,
    required super.store,
    this.horizontalPadding = 0,
  }) : super(showTitle: false);

  final double horizontalPadding;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DOTextFormField(
            store: store.roleStore,
          ),
          Sizes.s.spacer(),
          ...store.roleFields.keys.map(
            (key) {
              final fields = store.roleFields[key]!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(key.split("/").first, style: context.textTheme.titleMedium),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: fields.map(
                        (field) {
                          return ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 270, maxHeight: 100),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                              child: ChipsFormField(
                                store: field,
                                titleBuilder: (permission) => permission.name.toUpperCase(),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Sizes.xs.spacer(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
