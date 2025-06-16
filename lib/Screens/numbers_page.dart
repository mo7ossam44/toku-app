import 'package:flutter/material.dart';
import 'package:tuku/Models/Item_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<ItemModel> itemModels = [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'one',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ichi',
      enName: 'two',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'Ichi',
      enName: 'three',
      sound: 'sound',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Ichi',
      enName: 'four',
      sound: 'sound',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: 90,
        color: Colors.orange,
        child: Row(
          children: [
            Container(
              color: Colors.amber.shade100,
              child: Image.asset(itemModels[0].image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemModels[0].jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    itemModels[0].enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              padding: EdgeInsets.only(right: 20),
              onPressed: () {},
              icon: Icon(Icons.play_arrow, size: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
