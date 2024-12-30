import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/entity/movie_detail.dart';

class DetailSummary extends StatelessWidget {
  DetailSummary(this.md);
  final MovieDetail md;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                md.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(md.releaseDate),
            ],
          ),
          Text(md.tagline),
          Text('${md.runtime.toString()}분'),
        ],
      ),
    );
  }
}
