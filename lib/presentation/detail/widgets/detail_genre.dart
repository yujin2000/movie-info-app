import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/entity/genre.dart';

class DetailGenre extends StatelessWidget {
  DetailGenre(this.genres);
  List<Genre> genres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        height: 35,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          separatorBuilder: (context, index) => const SizedBox(width: 5),
          itemBuilder: (context, index) {
            return TextButton(
              // 버튼을 비활성화하여 버튼처럼 안 보이도록
              onPressed: null,
              style: Theme.of(context).textButtonTheme.style,
              child: Text(
                genres[index].name,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
