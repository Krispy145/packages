import 'package:flutter/material.dart';
import 'package:theme/presentation/components/options.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

class ThemeChangerView extends StatelessWidget {
  const ThemeChangerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // maxCrossAxisExtent: context.screenWidth * 0.25,
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 2,
        ),
        itemBuilder: (context, index) {
          final option = ChangerOptions.values[index];
          return GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              option.navigateTo(context).call();
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                // color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: option.icon,
                  ),
                  Sizes.s.spacer(),
                  Center(
                    child: Text(
                      option.name.toTitleCase(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: ChangerOptions.values.length,
      ),
    );
  }
}
