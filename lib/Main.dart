import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Unidad%20II/Screen.dart';
//import 'libreria/llamar.dart';
//import 'package:flutter_application_1/Unidad%20II/Libreria%202/llamar.dart';
//import 'package:flutter_application_1/pages/llamarpaquete.dart';
import 'package:flutter_application_1/Unidad%20II/figma/practica5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practica5(),
    );
  }
}