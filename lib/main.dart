import 'package:flutter/material.dart';
import 'package:module10_live_test/views/test_styling_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylingScreen(),
    );
  }
}
