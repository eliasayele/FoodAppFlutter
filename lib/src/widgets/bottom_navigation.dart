import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/CustomText.dart';

class BottomNavIcon extends StatelessWidget {
  final IconData icon;
  final String name;

  BottomNavIcon({Key? key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
          ),
          SizedBox(
            height: 2,
          ),
          CustomText(text: name),
        ],
      ),
    );
  }
}
