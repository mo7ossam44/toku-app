import 'package:flutter/material.dart';

class MainItems extends StatelessWidget {
  const MainItems({super.key, required this.text, required this.color, required this.ontap});

  final String text;
  final Color color;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          color: color,
          width: double.infinity,
          height: 70,
          child: Text(
            text,
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