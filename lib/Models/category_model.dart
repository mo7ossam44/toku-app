import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  final Color color;
  final VoidCallback? ontap;


  CategoryModel({
    this.ontap,
    required this.categoryName,
    required this.color,
  });
}
