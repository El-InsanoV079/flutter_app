import 'package:flutter/material.dart';
import '../Unidad II/mi_paquete_matematico/mi_paquete_matematico.dart';
import '../Unidad II/mi_paquete_matematico/mi_paquete2.dart';

class LlamarPaquete extends StatelessWidget {
  const LlamarPaquete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adal Eliel Bautista Sanjuan 4BS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
   
            ElevatedButton(
              onPressed: () {
                int resultado = CalculadoraBasica.sumar(10, 5);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('El resultado de la suma es $resultado'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Suma (10 + 5)'),
            ),

            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                int resultado = CalculadoraBasica.restar(10, 5);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('El resultado de la resta es $resultado'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Resta (10 - 5)'),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () {
                int resultado = MultDiv.multiplicar(10, 5);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('El resultado de la multiplicacion es $resultado'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Multiplicación (10 × 5)'),
            ),

            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                double resultado = MultDiv.dividir(10, 5);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('El resultado de la división es $resultado'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('División (10 ÷ 5)'),
            ),
          ],
        ),
      ),
    );
  }
}