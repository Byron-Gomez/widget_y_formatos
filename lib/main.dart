import 'package:flutter/material.dart';
import 'package:widget_y_formatos/config/presentation/screens/home/home_screen.dart';
import 'package:widget_y_formatos/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
     home: const HomeScreen()
        );
  }
}
