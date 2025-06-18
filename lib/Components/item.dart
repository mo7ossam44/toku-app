import 'package:flutter/material.dart';
import 'package:tuku/Models/Item_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemModel, required this.color});

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.amber.shade100,
            child: Image.asset(itemModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemModel.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  itemModel.enName,
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
    );
  }
}
