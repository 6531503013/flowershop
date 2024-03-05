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
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Image.asset(images[index]),
          );
        },
      ),
    );
  }
}
