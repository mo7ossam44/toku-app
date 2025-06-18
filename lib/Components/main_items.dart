import 'package:flutter/material.dart';
import 'package:tuku/Models/category_model.dart';

class MainItems extends StatelessWidget {
  MainItems({super.key, required this.categoryModel});

  // final String text;
  // final Color color;
  // final VoidCallback ontap;

  CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: categoryModel.ontap,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        color: categoryModel.color,
        width: double.infinity,
        height: 70,
        child: Text(
          categoryModel.categoryName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
