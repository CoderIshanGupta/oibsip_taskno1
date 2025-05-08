import 'package:flutter/material.dart';
import '../models/unit.dart';

class UnitDropdown extends StatelessWidget {
  final String label;
  final Unit value;
  final ValueChanged<Unit?> onChanged;
  final List<Unit> units;

  const UnitDropdown({
    required this.label,
    required this.value,
    required this.onChanged,
    required this.units,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Unit>(
      value: value,
      onChanged: onChanged,
      decoration: InputDecoration(labelText: label),
      items: units.map((Unit u) {
        return DropdownMenuItem<Unit>(
          value: u,
          child: Text('${u.name} (${u.symbol})'),  // Display both name and symbol
        );
      }).toList(),
    );
  }
}
