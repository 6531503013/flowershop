import 'package:flowershop/components/image_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/flower.dart';

class FlowerDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Cart cart = Provider.of<Cart>(context);
    List<Flower> flowerFlower = cart.flowerFlower;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 245, 238),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 220, 100, 154),
        elevation: 0,
        title: Text(
          'Flowers Details 🌺',
          style: TextStyle(
            color: Color.fromARGB(255, 163, 21, 78),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 194, 24, 91),
          ),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current screen and return to the previous one
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Roses
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 16.0,
                  ),
                  child: Card(
                    color: Colors.pink[100], // Set background color here
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            8.0,
                          ),
                          child: Image.asset(
                            flowerFlower[0].imagePath,
                            width: 200,
                            height: 200,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '  Roses🌹',
                            style: TextStyle(
                              color: Colors.pink[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        //description of the flower
                        SizedBox(height: 10), // เพิ่มช่องว่างระหว่าง Text
                        Text(
                          ' Description of Roses:' +
                              ' Roses are flowers that many people love. and is a flower with a long history. According to historical evidence, the rose is a flower with a bright, unique color. Nowadays, roses have become a symbol of love and romance that couples give to each other. The meaning of roses is different according to the color of the flower, which you can read more about at the button. ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 105, 74,
                                  63) // Change to your desired color
                              ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ImageDetailPage(
                                      images: [flowerFlower[0].imagePath]),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.pink[400],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                'More Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Sunflower
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 16.0,
                  ),
                  child: Card(
                    color: Colors.pink[100], // Set background color here
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            8.0,
                          ),
                          child: Image.asset(
                            flowerFlower[1].imagePath,
                            width: 200,
                            height: 200,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text('Name: ${flowerFlower[1].name}'),
                        SizedBox(height: 10), // เพิ่มช่องว่างระหว่าง Text
                        Text('Price: ${flowerFlower[1].price}'),
                        SizedBox(height: 10), // เพิ่มช่องว่างระหว่าง Text
                        Text('Description: ${flowerFlower[1].description}'),
                      ],
                    ),
                  ),
                ),
                // Repeat the above pattern for other flowers if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MoreDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Details'),
      ),
      body: Center(
        child: Text('More Details Page'),
      ),
    );
  }
}
