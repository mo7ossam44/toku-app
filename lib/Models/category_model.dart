import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  final Color color;
  final void Function(BuildContext) ontap;

  CategoryModel({
    required this.ontap,
    required this.categoryName,
    required this.color,
  });
}
