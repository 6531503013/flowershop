import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  final List<String> images;

  ImageDetailPage({required this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container for Roses
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200, // Set width as needed
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        images[
                            0], // Assuming images is a list containing image paths
                        height: 200, // Set height as needed
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Roses🌹',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              // Container for Sunflower
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200, // Set width as needed
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/image/P.jpg',
                        height: 200, // Set height as needed
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Sunflower',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      // Add additional information about the sunflower if needed
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       //different colors of roses
        //       Padding(
        //         padding: const EdgeInsets.symmetric(
        //           vertical: 10.0,
        //           horizontal: 16.0,
        //         ),
        //         child: Card(
        //           color: Colors.pink[100],
        //           child: Column(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(
        //                   8.0,
        //                 ),
        //                 child: Image.asset(
        //                   'images/roses/R.jpg',
        //                   width: 200,
        //                   height: 200,
        //                 ),
        //               ),
        //               Align(
        //                 alignment: Alignment.centerLeft,
        //               )
        //             ],
        //           ),
        //         ),
        //       )
        //********************** */
        // Container(
        //   height: 100,
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: ListView.builder(
        //           itemCount: images.length,
        //           scrollDirection: Axis.horizontal,
        //           itemBuilder: (context, index) {
        //             return Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 width: 100,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   border:
        //                       Border.all(color: Colors.black, width: 1),
        //                 ),
        //                 child: Image.asset(
        //                   images[index],
        //                   height: 100,
        //                 ),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           decoration: BoxDecoration(
        //             border: Border.all(color: Colors.black, width: 1),
        //           ),
        //           child: Image.asset(
        //             'lib/image/2.jpg', // รูปภาพที่ต้องการแสดง
        //             fit: BoxFit
        //                 .cover, // Adjusted to cover the entire container
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        ///***************** */
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
