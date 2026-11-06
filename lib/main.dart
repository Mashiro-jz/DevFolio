import 'package:devfolio/core/theme/app_colors.dart';
import 'package:devfolio/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DevfolioApp());
}

class DevfolioApp extends StatelessWidget {
  const DevfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light, // TODO: CREATE A SETTING TO SWITCH BETWEEN LIGHT AND DARK MODE
      darkTheme: AppTheme.darkTheme,
      home: const Scaffold(body: Center(child: Text('Hello, World!'))),
    );
  }
}
