import 'package:flutter/material.dart';
import 'package:tuku/Components/main_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          MainItems(text: 'Numbers', color: Colors.orange),
          MainItems(text: 'Family Members', color: Colors.green),
          MainItems(text: 'Colors', color: Colors.purple),
          MainItems(text: 'Phrases', color: Colors.blue),
        ],
      ),
    );
  }
}
