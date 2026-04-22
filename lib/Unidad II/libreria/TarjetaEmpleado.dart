import 'package:flutter/material.dart';

class TarjetaEmpleado extends StatelessWidget {
  final String nombre;
  final Color colorFondo;

  const TarjetaEmpleado({
    super.key,
    required this.nombre,
    this.colorFondo = const Color.fromARGB(255, 243, 33, 33),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorFondo,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(
          nombre,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}