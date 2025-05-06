import 'package:flutter/material.dart';
import '../themes/app_theme.dart';  // Import the theme file
import '../screens/home_screen.dart';  // Import your screens

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      theme: AppTheme.lightTheme,  // Use the light theme
      darkTheme: AppTheme.darkTheme,  // Use the dark theme
      themeMode: ThemeMode.light,  // Switch between light and dark theme
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // Add other routes here
      },
    );
  }
}