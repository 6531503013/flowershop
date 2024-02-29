import 'package:flutter/material.dart';

import '../models/flower.dart';

class FlowerTitle extends StatelessWidget {
  Flower flower;
  FlowerTitle({super.key, required this.flower});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.pink[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //flower pic
          Image.asset(flower.imagePath),
          //description

          //price+details

          //button to add to cart
        ],
      ),
    );
  }
}
