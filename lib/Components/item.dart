import 'package:flutter/material.dart';
import 'package:tuku/Components/shared_container.dart';
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
            child: Image.asset(itemModel.image!),
          ),
          Expanded(child: SharedContainer(itemModel: itemModel, color: color)),
        ],
      ),
    );
  }
}


