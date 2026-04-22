import 'package:flutter/material.dart';
// import 'Screen.dart';
import 'P2U2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Practica2U2(),

    );
  }
}