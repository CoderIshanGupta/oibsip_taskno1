import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  final VoidCallback onTap;

  const CategoryTile({required this.category, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the appropriate icon for each category
    IconData categoryIcon = _getCategoryIcon(category);

    return InkWell(
      onTap: onTap,
      splashColor: Colors.blueAccent.withOpacity(0.3),
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue.shade200, // Blue background for better visibility
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(categoryIcon, size: 50, color: Colors.white), // Icon representing the category
              SizedBox(height: 8),
              Text(
                category,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Get the appropriate icon for each category
  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Length':
        return Icons.height; // Icon for Length (height)
      case 'Weight':
        return Icons.scale; // Icon for Weight (scale)
      case 'Temperature':
        return Icons.thermostat; // Icon for Temperature (thermostat)
      case 'Time':
        return Icons.access_time; // Icon for Time (clock)
      case 'Speed':
        return Icons.directions_car; // Icon for Speed (car)
      case 'Area':
        return Icons.crop_square; // Icon for Area (square)
      case 'Volume':
        return Icons.grain; // Icon for Volume (liquid/grain)
      case 'Currency':
        return Icons.monetization_on; // Icon for Currency (money)
      case 'Power':
        return Icons.flash_on; // Icon for Power (flash or electricity)
      case 'Data':
        return Icons.computer; // Icon for Data (computer)
      case 'Pressure':
        return Icons.gas_meter; // Icon for Pressure (gas meter)
      case 'Energy':
        return Icons.lightbulb; // Icon for Energy (light bulb)
      case 'Force':
        return Icons.fitness_center; // Icon for Force (strength)
      case 'Angle':
        return Icons.rotate_right; // Icon for Angle (rotation)
      default:
        return Icons.category; // Default Icon for unknown category
    }
  }
}