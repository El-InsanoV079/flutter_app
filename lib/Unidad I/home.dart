import 'package:flutter/material.dart';
import 'package:flutter_application_1/Unidad%20I/PracticaBotones.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Lista de alumnos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.smart_button),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BotonesPage(),
                ),
              );
            },
          ),
        ],
      ),

      body: ListView(
        children: [

          Card(
            color: const Color.fromARGB(255, 172, 186, 46),
            child: ListTile(
              title: const Text(
                'Victor CHOTO',
                style: TextStyle(fontSize: 15, color: Colors.blueAccent),
              ),
              subtitle: const Text(
                'Alumno',
                style: TextStyle(color: Colors.blueAccent),
              ),
              leading: const Icon(Icons.person, color: Colors.black),
              trailing: const Icon(Icons.delete, color: Colors.red),
            ),
          ),

          Card(
            color: const Color.fromARGB(255, 94, 73, 24),
            child: ListTile(
              title: const Text(
                'Kevin 1',
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
              subtitle: const Text(
                'Alumno de sistemas',
                style: TextStyle(color: Colors.amber),
              ),
              leading: const Icon(Icons.person, color: Colors.black),
              trailing: const Icon(Icons.delete, color: Colors.red),
            ),
          ),

          Card(
            color: const Color.fromARGB(255, 186, 84, 58),
            child: ListTile(
              title: const Text(
                'Kevin 2',
                style: TextStyle(fontSize: 25, color: Colors.redAccent),
              ),
              subtitle: const Text(
                'Alumno de topicos',
                style: TextStyle(color: Colors.redAccent),
              ),
              leading: const Icon(Icons.person, color: Colors.black),
              trailing: const Icon(Icons.delete, color: Colors.red),
            ),
          ),

        ],
      ),
    );
  }
}
