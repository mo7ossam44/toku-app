import 'package:flutter/material.dart';
import 'package:tuku/Components/shared_container.dart';
import 'package:tuku/Models/Item_model.dart';

class PharsesItem extends StatelessWidget {
  const PharsesItem({super.key, required this.itemModel, required this.color});

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SharedContainer(itemModel: itemModel, color: color);
  }
}