import 'package:flutter/material.dart';
import 'package:flutter_arduino_remote/pages/home.dart';
import 'package:flutter_arduino_remote/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
