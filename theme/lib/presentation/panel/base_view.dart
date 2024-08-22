import "package:flutter/material.dart";
import "package:theme/presentation/components/options.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/sizes/spacers.dart";

class ThemeChangerView extends StatefulWidget {
  const ThemeChangerView({super.key});

  @override
  State<ThemeChangerView> createState() => _ThemeChangerViewState();
}

class _ThemeChangerViewState extends State<ThemeChangerView> {
  final TextEditingController _controller = TextEditingController();

  List<ChangerOptions> _options = ChangerOptions.values;

  void _onChanged(String value) {
    setState(() {
      _options = ChangerOptions.values
          .where(
            (element) => element.name.toLowerCase().contains(value.toLowerCase()),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Search",
              prefixIcon: Icon(Icons.search),
            ),
            controller: _controller,
            onChanged: _onChanged,
          ),
          Sizes.s.spacer(),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: context.screenWidth * 0.25,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, index) {
                final option = _options[index];
                return GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pop();
                    option.navigateTo(context).call();
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
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
              itemCount: _options.length,
            ),
          ),
        ],
      ),
    );
  }
}
