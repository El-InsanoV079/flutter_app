import 'package:flutter/material.dart';

class Practica5 extends StatelessWidget {
  const Practica5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Container(
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
                _crearOpcionMenu(context, Icons.home, "Inicio"),
                _crearOpcionMenu(context, Icons.search, "Buscar"),
                _crearOpcionMenu(context, Icons.library_music, "Tu biblioteca"),
              ],
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Spotify",
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
                        _crearCardAlbum(context, "Musica 1", Colors.red),
                        _crearCardAlbum(context, "Musica 2", Colors.blue),
                        _crearCardAlbum(context, "Musica 3", Colors.green),
                        _crearCardAlbum(context, "Musica 4", Colors.orange),
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

Widget _crearOpcionMenu(BuildContext context, icono, String texto) {
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
          duration: Duration(milliseconds: 500),
          backgroundColor: Colors.green,
        ),
      );
    },
  );
}
Widget _crearCardAlbum(BuildContext context, titulo, Color colorFondo) {
      return Card(
        color: colorFondo,
        child: Center(
          child: InkWell(
            onTap: () {
              print("Navegando a la seccion: $titulo");

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Entrando a: $titulo"),
                  duration: Duration(milliseconds: 500),
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