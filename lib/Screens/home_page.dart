import 'package:flutter/material.dart';
import 'package:tuku/Components/main_items.dart';
import 'package:tuku/Screens/family_members_page.dart';
import 'package:tuku/Screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
      body: ListView(
        children: [
          MainItems(
            ontap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => NumbersPage()));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          MainItems(
            ontap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => FamilyMembersPage()));
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          MainItems(
            ontap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          MainItems(
            ontap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            text: 'Phrases',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
