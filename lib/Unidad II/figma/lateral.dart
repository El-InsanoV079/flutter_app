import 'package:flutter/material.dart';

class Lateral extends StatelessWidget {
  const Lateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("InvestBank",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ),

          const SizedBox(height: 30),

          _opcion(context, Icons.grid_view,         "Dashboard"),
          _opcion(context, Icons.show_chart,        "Analytics"),
          _opcion(context, Icons.credit_card,       "Payments"),
          _opcion(context, Icons.savings,           "Deposit"),
          _opcion(context, Icons.wallet,            "Moneybox"),
          _opcion(context, Icons.candlestick_chart, "Securities"),

          const Divider(color: Colors.white24, height: 40),

          _opcion(context, Icons.help_outline, "Help"),
          _opcion(context, Icons.settings,     "Settings"),

          const Spacer(),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(backgroundColor: Colors.orange,
                    child: Text("AK", style: TextStyle(color: Colors.white, fontSize: 12))),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Anna Karin", style: TextStyle(color: Colors.white, fontSize: 12)),
                    Text("annakarin@gmail.com",
                        style: TextStyle(color: Colors.white54, fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _opcion(BuildContext context, IconData icono, String texto) {
    return ListTile(
      dense: true,
      leading: Icon(icono, color: Colors.white70, size: 20),
      title: Text(texto, style: const TextStyle(color: Colors.white70, fontSize: 13)),
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sección: $texto"),
            duration: const Duration(milliseconds: 500),
            backgroundColor: Colors.green),
      ),
    );
  }
}