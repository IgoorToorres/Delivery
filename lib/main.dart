import 'package:delivery/Ui/_core/app_theme.dart';
import 'package:delivery/Ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}
