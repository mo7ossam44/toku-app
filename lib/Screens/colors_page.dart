import 'package:flutter/material.dart';
import 'package:tuku/Components/item.dart';
import 'package:tuku/Models/Item_model.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<ItemModel> colorsList = [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gure',
      enName: 'gray',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
      sound: 'sound',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Item(itemModel: colorsList[index], color: Colors.purple);
        },
      ),
    );
  }
}
