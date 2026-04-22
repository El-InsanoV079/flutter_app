import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Barra superior
      appBar: AppBar(
        title: const Text('Practica Botones: Adal Eliel Bautista Sanjuan 4BS'),
      ),

      // Contenido principal
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

  const Text(
    '',
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 20),

  // Botón 1
  ElevatedButton(
    onPressed: () {
      print('Guardando información...');
    },
    child: const Text('Guardar cambios'),
  ),

  const SizedBox(height: 20),

  // Botón 2
  OutlinedButton(
    onPressed: () {
      print('Cancelando operación...');
    },
    child: const Text('Cancelar'),
  ),

  const SizedBox(height: 20),

  // Botón 3
  TextButton(
    onPressed: () {
      print('Mostrando ayuda...');
    },
    child: const Text('¿Necesitas ayuda?'),
  ),

  const SizedBox(height: 20),

  // Botón investigado 1: FloatingActionButton
  FloatingActionButton(
    onPressed: () {
      print('Botón flotante presionado');
    },
    child: const Icon(Icons.add),
  ),

  const SizedBox(height: 20),

  // Botón investigado 2: DropdownButton
  DropdownButton<String>(
    hint: const Text('Selecciona opción'),
    items: const [
      DropdownMenuItem(
        value: 'op1',
        child: Text('Opción 1'),
      ),
      DropdownMenuItem(
        value: 'op2',
        child: Text('Opción 2'),
      ),
      DropdownMenuItem(
        value: 'op3',
        child: Text('Opción 3'),
      ),
    ],
    onChanged: (value) {
      print('Seleccionaste: $value');
    },
  ),

],

        ),
      ),
    );
  }
}
