import 'package:flutter/material.dart';
import 'package:onboarding/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listenoryx',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      //  home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
