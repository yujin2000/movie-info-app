import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/widgets/movie_image.dart';

class HomeMainView extends StatelessWidget {
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
            url: 'https://picsum.photos/200/300',
            height: 550,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
