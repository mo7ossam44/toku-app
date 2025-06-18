
import 'package:flutter/material.dart';
import 'package:tuku/Models/Item_model.dart';

class SharedContainer extends StatelessWidget {
  const SharedContainer({
    super.key,
    required this.itemModel,
    required this.color,
  });

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        children: [
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
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
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
