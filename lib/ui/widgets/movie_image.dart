import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  MovieImage({
    required this.url,
    required this.height,
    required this.width,
  });

  String url;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          url,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
