import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/flower.dart';

class FlowerTitle extends StatelessWidget {
  Flower flower;
  void Function()? onTap;
  FlowerTitle({super.key, required this.flower, required this.onTap});

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //flower pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              flower.imagePath,
              width: 450,
              height: 220,
              fit: BoxFit
                  .cover, // ใช้ BoxFit.cover เพื่อให้รูปภาพครอบคลุมพื้นที่ทั้งขนาดที่กำหนด
              alignment: Alignment.center, // ตั้งค่าการจัดวางให้รูปภาพอยู่กลาง
            ),
          ),

          //description
          Text(
            flower.description,
            style: TextStyle(color: Colors.white),
          ),

          //price+details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //flower name
                    Text(
                      flower.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 5),

                    //price
                    Text(
                      '\$' + flower.price,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 214, 228),
                      ),
                    ),
                  ],
                ),

                //+ button to add to cart
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 248, 187, 208),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 194, 24, 91),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
