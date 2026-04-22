import 'package:flutter/material.dart';
import 'menu.dart';

class Practica5 extends StatelessWidget {
  const Practica5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const MenuLateral(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Adal Eliel Bautista Sanjuan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 31, 146, 48),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      padding: const EdgeInsets.all(20),
                      children: [
                        crearCardAlbum(context, "Musica 1", Colors.red),
                        crearCardAlbum(context, "Musica 2", const Color.fromARGB(255, 30, 189, 80)),
                        crearCardAlbum(context, "Musica 3", const Color.fromARGB(255, 15, 6, 70)),
                        crearCardAlbum(context, "Musica 4", const Color.fromARGB(255, 203, 190, 171)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget crearCardAlbum(BuildContext context, String titulo, Color colorFondo) {
  return Card(
    color: colorFondo,
    child: Center(
      child: InkWell(
        onTap: () {
          print("Navegando a la seccion: $titulo");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Entrando a: $titulo"),
              duration: const Duration(milliseconds: 500),
              backgroundColor: Colors.green,
            ),
          );
        },
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}