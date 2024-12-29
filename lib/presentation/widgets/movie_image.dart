import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/detail/detail_page.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage();
            },
          ),
        );
      },
      child: SizedBox(
        height: height,
        width: width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            url,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
