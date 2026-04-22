import 'package:flutter/material.dart';
import 'arriba.dart';
import 'widgets.dart';

class Medio extends StatelessWidget {
  const Medio({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: const Color(0xFFF5F5FA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const arriba(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text("Hello, Anna!",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    const Text("Send and receive funds with pleasure.",
                        style: TextStyle(fontSize: 13, color: Colors.grey)),

                    const SizedBox(height: 20),

                    Row(
                      children: const [
                        Expanded(child: TarjetaStat("Total Income",  "\$974,99",  "+7.85%",  true)),
                        SizedBox(width: 12),
                        Expanded(child: TarjetaStat("Total Expense", "\$425,30",  "-22.30%", true)),
                        SizedBox(width: 12),
                        Expanded(child: TarjetaStat("Total Savings", "\$549,61",  "+9.50%",  true)),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const TarjetaWallet(),

                    const SizedBox(height: 16),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}