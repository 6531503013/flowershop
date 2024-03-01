import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/flower_title.dart';
import '../models/cart.dart';
import '../models/flower.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add flower to cart
  void addFlowerToCart(Flower flower) {
    Provider.of<Cart>(context, listen: false).addItemToCart(flower);

    //alert the customer ,flower successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Sucessfully added!🎉'),
        content: Text('Check your cart.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Search bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Search',
                          style: TextStyle(
                              color: Color.fromARGB(255, 236, 64, 122))),
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

                //list of flower for sale
                Expanded(
                  child: ListView.builder(
                    itemCount: 9,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      //get a flower the shop list
                      Flower flower = value.getFlowerList()[index];

                      //return the flower
                      return FlowerTitle(
                        flower: flower,
                        onTap: () => addFlowerToCart(flower),
                      );
                    },
                  ),
                ),

                const Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                  child: Divider(
                    color: Color.fromARGB(255, 248, 187, 208),
                  ),
                )
              ],
            ));
  }
}
