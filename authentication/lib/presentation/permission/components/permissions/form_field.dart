import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/chips/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class ReactivePermissionsField extends ReactiveFormField<UserPermissionsModel, UserPermissionsModel> {
  final String title;
  ReactivePermissionsField({
    required this.title,
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
  }) : super(
          builder: (field) {
            final store = PermissionsFormFieldStore(
              title: title,
              onValueChanged: (model) => field.didChange(model),
              initialValue: field.value,
            );
            return PermissionChipsField(permissionName: title, fields: store.roleFields);
          },
        );

  @override
  ReactiveFormFieldState<UserPermissionsModel, UserPermissionsModel> createState() => _ReactivePermissionsFieldState<UserPermissionsModel>();
}

class _ReactivePermissionsFieldState<T> extends ReactiveFormFieldState<T, UserPermissionsModel> {
  _ReactivePermissionsFieldState();
}

class PermissionChipsField extends StatelessWidget {
  final String permissionName;
  final List<ChipsFormFieldStore<PermissionLevel>> fields;
  const PermissionChipsField({
    super.key,
    required this.permissionName,
    required this.fields,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(permissionName, style: context.textTheme.titleMedium),
        SizedBox(
          height: 80,
          child: Row(
            children: fields.map((field) {
              return Observer(
                builder: (context) {
                  final segments = field.available.map((filter) => ButtonSegment(value: filter, label: Text(filter.name))).toList();
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(field.title, style: context.textTheme.titleSmall?.copyWith(color: context.colorScheme.onSurface.withOpacity(0.6))),
                        ),
                        SegmentedButton(
                          style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.resolveWith((states) {
                              return states.contains(WidgetState.selected) ? context.colorScheme.onPrimaryContainer : context.colorScheme.onSurface;
                            }),
                            backgroundColor: WidgetStateProperty.resolveWith((states) {
                              return states.contains(WidgetState.selected) ? context.colorScheme.primaryContainer : context.colorScheme.surface;
                            }),
                          ),
                          segments: segments,
                          selected: field.selected.toSet(),
                          onSelectionChanged: (p0) => field.selectFilter(p0.first),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        Sizes.xs.spacer(),
      ],
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text(permissionName, style: context.textTheme.titleMedium),
    //     SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         mainAxisSize: MainAxisSize.min,
    //         children: fields.map(
    //           (field) {
    //             return ConstrainedBox(
    //               constraints: const BoxConstraints(maxWidth: 270, maxHeight: 100),
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 8),
    //                 child: ChipsFormField(
    //                   store: field,
    //                   titleBuilder: (permission) => permission.name.toUpperCase(),
    //                 ),
    //               ),
    //             );
    //           },
    //         ).toList(),
    //       ),
    //     ),
    //     Sizes.xs.spacer(),
    //   ],
    // );
  }
}
