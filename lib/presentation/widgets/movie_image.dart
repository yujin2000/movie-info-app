import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/presentation/detail/detail_page.dart';

class MovieImage extends StatelessWidget {
  MovieImage({
    required this.movie,
    required this.height,
    required this.width,
  });

  Movie movie;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    String tag = '${movie.id}#$time';
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(movie, tag);
            },
          ),
        );
      },
      child: Hero(
        tag: tag,
        child: SizedBox(
          height: height,
          width: width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              movie.posterPath,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
