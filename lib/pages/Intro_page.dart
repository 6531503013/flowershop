import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 245, 238),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'lib/image/logo.jpg',
                    height: 250,
                  ),
                ),

                const SizedBox(height: 48),

                //title
                const Text(
                  'All Thing Grow With Love',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                const SizedBox(height: 24),

                //sub title
                const Text(
                  'Bringing Heavens Blooms to Your Garden, Explore the Floral Wonders of Heaven Garden',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 248, 187, 208),
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48),

                //start now button
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: const Text('Shop Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
