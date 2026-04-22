import 'package:flutter/material.dart';

class PracticaRow extends StatelessWidget {
  const PracticaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 4: Adal Eliel Bautista'),
      ),

      body: Row(
        children: [

          Expanded(
            child: Container(
              color: Colors.lightBlue[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.home, color: Colors.blue, size: 30),
                  SizedBox(height: 8),
                  Text('Inicio'),
                ],
              ),
            ),
          ),

          Expanded( 
            child: Container(
              color: const Color.fromARGB(255, 178, 47, 125),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.settings, color: Colors.black54, size: 30),
                  SizedBox(height: 8),
                  Text('Ajustes'),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.green[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.person, color: Color.fromARGB(255, 199, 183, 60), size: 30),
                  SizedBox(height: 8),
                  Text('Perfil'),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
