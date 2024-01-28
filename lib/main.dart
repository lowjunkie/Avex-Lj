import 'package:design_one/screens/bottom_bar.dart';
import 'package:design_one/theme/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avex',
      theme: Palette.lightModeAppTheme,
      home: const BottomBar(),
    );
  }
}


