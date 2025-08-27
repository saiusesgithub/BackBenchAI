import 'package:backbenchai/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackBench AI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(225, 208, 0, 255),
        ),
        fontFamily: 'Nunito',
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
