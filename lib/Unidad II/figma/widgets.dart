import 'package:flutter/material.dart';

class TarjetaStat extends StatelessWidget {
  final String titulo;
  final String valor;
  final String cambio;
  final bool positivo;

  const TarjetaStat(this.titulo, this.valor, this.cambio, this.positivo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo, style: const TextStyle(fontSize: 11, color: Colors.grey)),
            const SizedBox(height: 6),
            Text(valor,  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(positivo ? Icons.trending_up : Icons.trending_down,
                    size: 14, color: positivo ? Colors.green : Colors.red),
                const SizedBox(width: 4),
                Text("$cambio from last week",
                    style: TextStyle(fontSize: 11, color: positivo ? Colors.green : Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TarjetaWallet extends StatelessWidget {
  const TarjetaWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Row(
              children: [
                Text("Wallet", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 12),

            Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Color(0xFF4C1D95), Color(0xFF4C1D95)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("VISA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 16)),
                  Spacer(),
                  Text("Card Number", style: TextStyle(color: Colors.white54, fontSize: 10)),
                  Text("5783 4160 8526 3149",
                      style: TextStyle(color: Colors.white, fontSize: 12, letterSpacing: 1)),
                ],
              ),
            ),

            const SizedBox(height: 12),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Balance", style: TextStyle(fontSize: 11, color: Colors.grey)),
                Text("\$14,528.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text("Currency", style: TextStyle(fontSize: 11, color: Colors.grey)),
                Text("US Dollar", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


