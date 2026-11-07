import 'package:devfolio/core/router/app_router.dart';
import 'package:devfolio/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DevfolioApp());
}

class DevfolioApp extends StatelessWidget {
  const DevfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Devfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light, // TODO: CREATE A SETTING TO SWITCH BETWEEN LIGHT AND DARK MODE
      darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
