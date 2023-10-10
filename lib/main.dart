import 'package:flutter/material.dart';
import 'package:doctor_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(255, 255, 255, 1)),
      ),
      home: HomePage(),
    );
  }
}
