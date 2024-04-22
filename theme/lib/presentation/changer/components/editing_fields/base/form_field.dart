import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../base/store.dart';

// ignore: strict_raw_type
abstract class BaseFormField<T extends BaseFormFieldStore> extends StatelessWidget {
  const BaseFormField({super.key, required this.store});

  final T store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(store.title),
            ),
            buildField(context),
          ],
        );
      },
    );
  }

  Widget buildField(BuildContext context);
}
