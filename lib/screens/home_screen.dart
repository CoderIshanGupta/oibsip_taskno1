import 'package:flutter/material.dart';
import '../data/units_data.dart';
import '../screens/conversion_screen.dart';
import '../widgets/category_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = unitCategories.keys.toList(); // Your category names

    // MediaQuery for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600;  // Adjust as per your requirement for large screen
    double padding = isLargeScreen ? 32.0 : 16.0;  // Larger padding for larger screens
    double gridAspectRatio = isLargeScreen ? 1.2 : 1.1;  // Adjust grid aspect ratio

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit Converter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isLargeScreen ? 26.0 : 22.0, // Adjust title font size for large screens
            color: Colors.white, // Text color in the AppBar
          ),
        ),
        backgroundColor: Colors.transparent, // Transparent background for the gradient effect
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade800, // Darker blue at the top
                Colors.blue.shade500, // Lighter blue at the bottom
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isLargeScreen ? 3 : 2, // Use 3 columns on large screens, 2 on small
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: gridAspectRatio,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];

            return CategoryTile(
              category: category,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ConversionScreen(category: category),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}