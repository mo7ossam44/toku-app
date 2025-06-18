import 'package:flutter/material.dart';
import 'package:tuku/Components/phrases_item.dart';
import 'package:tuku/Models/Item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<ItemModel> phrasesList = [
    ItemModel(
      jpName: 'kodoku suru koto o wesurenaide kudsi',
      enName: "don't forgot to subscribe",
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: "i love programming",
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: "programming is easy",
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: "whare are you going",
      sound: 'sounds/phrases/where_are_you_going.wav',
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
