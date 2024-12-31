import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/entity/movie_detail.dart';

class DetailBoxOfficeInfo extends StatelessWidget {
  DetailBoxOfficeInfo(this.md);
  MovieDetail md;

  @override
  Widget build(BuildContext context) {
    List<String> info = [
      '${md.voteAverage}\n평점',
      '${md.voteCount}\n평점투표수',
      '${md.popularity}\n인기점수',
      '\$${md.budget}\n예산',
      '\$${md.revenue}\n수익',
    ];
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: info.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return item(info[index]);
        },
      ),
    );
  }

  Container item(String text) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
