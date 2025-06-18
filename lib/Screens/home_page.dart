import 'package:flutter/material.dart';
import 'package:tuku/Components/main_items.dart';
import 'package:tuku/Models/category_model.dart';
import 'package:tuku/Screens/colors_page.dart';
import 'package:tuku/Screens/family_members_page.dart';
import 'package:tuku/Screens/numbers_page.dart';
import 'package:tuku/Screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CategoryModel> categoriesList = [
    CategoryModel(
      categoryName: 'Numbers',
      color: Colors.orange,
      ontap: (context) => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => NumbersPage())),
    ),
    CategoryModel(
      categoryName: 'Family Members',
      color: Colors.green,
      ontap: (context) => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => FamilyMembersPage())),
    ),
    CategoryModel(
      categoryName: 'Colors',
      color: Colors.purple,
      ontap: (context) => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => ColorsPage())),
    ),
    CategoryModel(
      categoryName: 'Phrases',
      color: Colors.blue,
      ontap: (context) => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => PhrasesPage())),
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
      ),
      body: ListView.builder(
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return MainItems(categoryModel: categoriesList[index]);
        },
      ),
    );
  }
}
