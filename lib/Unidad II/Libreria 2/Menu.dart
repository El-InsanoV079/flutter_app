import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.black87,
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text(
            "MI MÚSICA",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          crearOpcionMenu(context, Icons.home, "Inicio"),
          crearOpcionMenu(context, Icons.search, "Buscar"),
          crearOpcionMenu(context, Icons.library_music, "Tu biblioteca"),
        ],
      ),
    );
  }
}

Widget crearOpcionMenu(BuildContext context, IconData icono, String texto) {
  return ListTile(
    leading: Icon(icono, color: Colors.white70),
    title: Text(
      texto,
      style: const TextStyle(color: Colors.white70),
    ),
    onTap: () {
      print("Navegando a la seccion: $texto");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Entrando a: $texto"),
          duration: const Duration(milliseconds: 500),
          backgroundColor: Colors.green,
        ),
      );
    },
  );
}