import "package:flutter/material.dart";
import "package:widgets/component_decoration/component_decoration.dart";
import "package:widgets/switches/switch_row.dart";

class Switches extends StatelessWidget {
  const Switches({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentDecoration(
      label: "Switches",
      tooltipMessage: "Use SwitchListTile or Switch",
      child: Column(
        children: <Widget>[
          SwitchRow(isEnabled: true),
          SwitchRow(isEnabled: false),
        ],
      ),
    );
  }
}
