import 'package:flutter/material.dart';
import 'lateral.dart';
import 'medio.dart';

class Practica5 extends StatelessWidget {
  const Practica5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Lateral(),
          Medio(),
        ],
      ),
    );
  }
}