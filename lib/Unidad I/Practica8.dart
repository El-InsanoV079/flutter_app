import 'package:flutter/material.dart';

class Practica8 extends StatelessWidget {
  const Practica8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Bienvenidos'),
        backgroundColor: const Color.fromARGB(248, 87, 216, 27),
      ), //
      body: ListView(
        children: [
          nombres(context, Icons.home, "hola"),
          
        ],
      ),
    );
  }
}

Widget nombres(context, IconData icono, String texto) {
  return Card(
    color: const Color.fromARGB(255, 117, 133, 223),
    child: ListTile(
      leading: Icon(icono, color: const Color.fromARGB(255, 255, 255, 255)),
      title: Text(texto, style: const TextStyle(color: Colors.white)),
      subtitle: Text(
        'Estudiante de sistemas',
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
      ),
      trailing: Icon(Icons.delete),
    ),
  );
}