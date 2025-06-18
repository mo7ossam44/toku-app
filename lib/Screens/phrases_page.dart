import 'package:flutter/material.dart';
import 'package:tuku/Components/phrases_item.dart';
import 'package:tuku/Models/Item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<ItemModel> phrasesList = [
    ItemModel(
      jpName: 'kodoku suru koto o wesurenaide kudsi',
      enName: "don't forgot to subscribe",
      sound: 'sound',
    ),
    ItemModel(
      jpName: 'kodoku suru koto o wesurenaide kudsi',
      enName: "don't forgot to subscribe",
      sound: 'sound',
    ),
    ItemModel(
      jpName: 'kodoku suru koto o wesurenaide kudsi',
      enName: "don't forgot to subscribe",
      sound: 'sound',
    ),
    ItemModel(
      jpName: 'kodoku suru koto o wesurenaide kudsi',
      enName: "don't forgot to subscribe",
      sound: 'sound',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PharsesItem(itemModel: phrasesList[index], color: Colors.blue);
        },
      ),
    );
  }
}
