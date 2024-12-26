import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  MovieImage(this.url);
  String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 130,
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
