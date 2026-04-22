import 'package:flutter/material.dart';

class Practica2U2 extends StatelessWidget {
  const Practica2U2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          // =============================
          // MENU LATERAL
          // =============================
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

          // =============================
          // CONTENIDO PRINCIPAL
          // =============================
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Padding(
                    padding: EdgeInsets.all(20),
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
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [

                        _crearCardAlbum(context, "Álbum 1", "assets/1.png"),
                        _crearCardAlbum(context, "Álbum 2", "assets/2.jpg"),
                        _crearCardAlbum(context, "Álbum 3", "assets/3.jpg"),
                        _crearCardAlbum(context, "Álbum 4", "assets/4.jpg"),

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

//
// =============================
// OPCIONES DEL MENÚ
// =============================
//

Widget _crearOpcionMenu(BuildContext context, IconData icono, String texto) {
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

//
// =============================
// CARD DE ALBUM
// =============================
//

Widget _crearCardAlbum(BuildContext context, String titulo, String imagen) {
  return Card(
    child: InkWell(
      onTap: () {

        print("Entrando a: $titulo");

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Reproduciendo: $titulo"),
            duration: const Duration(milliseconds: 500),
            backgroundColor: Colors.green,
          ),
        );
      },

      child: Column(
        children: [

          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
              child: Image.asset(
                imagen,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            titulo,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

        ],
      ),
    ),
  );
}