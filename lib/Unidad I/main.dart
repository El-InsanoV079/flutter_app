
import 'package:flutter/material.dart';
/*

import 'package:flutter_application_1/Unidad%20I/home.dart'; // ← ACTIVO
import 'package:flutter_application_1/Unidad%20I/PracticaBotones.dart';
import 'package:flutter_application_1/Unidad%20I/PracticaRow.dart';
import 'package:flutter_application_1/Unidad%20I/homep5.dart';
import 'package:flutter_application_1/Practica5.dart'; */
import 'package:flutter_application_1/Unidad%20I/Practica8.dart'; 



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'Flutter Demo',
      home: const Practica8(), // ← SOLO un const
    );
  }
}
