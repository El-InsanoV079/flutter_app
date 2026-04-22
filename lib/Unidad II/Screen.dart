import 'package:flutter/material.dart';
//import 'libreria/TarjetaEmpleado.dart';
import '../Unidad II/libreria/Llamar.dart';

class PantallaEmpleados extends StatelessWidget {
  const PantallaEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Equipo de Trabajo ---- Adal Eliel"),
      ),
      body: Column(
        children: const [
          TarjetaEmpleado(
            nombre: "Usuario 1",
            colorFondo: Color.fromARGB(255, 212, 76, 31),
          ),
          TarjetaEmpleado(
            nombre: "Usuario 2",
            colorFondo: Color.fromARGB(255, 187, 45, 45),
          ),
          TarjetaEmpleado(
            nombre: "Usuario 3",
          ),
        ],
      ),
    );
  }
}