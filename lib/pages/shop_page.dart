import 'package:flutter/material.dart';

import '../components/flower_title.dart';
import '../models/flower.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.pink[100], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Search',
                  style: TextStyle(color: Color.fromARGB(255, 236, 64, 122))),
              Icon(
                Icons.search,
                color: Color.fromARGB(255, 194, 24, 91),
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'The art of Foral Expression',
            style: TextStyle(color: Colors.pink[700]),
          ),
        ),

        //popular flowers
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Popular❤️',
                style: TextStyle(
                  color: Color.fromARGB(255, 163, 21, 78),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 246, 68, 127),
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //create a flower
              Flower flower = Flower(
                  name: 'Sunflower',
                  price: '150',
                  description: 'symbolizes brightness and cheerfulness.',
                  imagePath: 'lib/image/2.jpg');
              return FlowerTitle(
                flower: flower,
              );
            },
          ),
        ),
      ],
    );
  }
}
