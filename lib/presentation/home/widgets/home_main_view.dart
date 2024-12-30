import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/presentation/widgets/movie_image.dart';

class HomeMainView extends StatelessWidget {
  HomeMainView(this.movie);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '가장 인기있는',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          MovieImage(
            movie: movie,
            height: 550,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
