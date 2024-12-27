import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/widgets/movie_image.dart';

class HomeLabelView extends StatelessWidget {
  HomeLabelView({required this.label, this.isRank = false});

  String url = 'https://picsum.photos/200/300';
  String label;
  late bool isRank;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 라벨
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        // 영화 포스터
        SizedBox(
          height: 180,
          child: isRank
              // 인기순
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: rankMovieImage((index + 1).toString()),
                      );
                    }
                    return rankMovieImage((index + 1).toString());
                  },
                )
              // 인기순 외의 영화
              : ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: MovieImage(url: url, height: 180, width: 130),
                      );
                    }
                    return MovieImage(url: url, height: 180, width: 130);
                  },
                ),
        ),
      ],
    );
  }

  /// 인기순 용 영화 이미지
  Widget rankMovieImage(String rank) {
    return SizedBox(
      width: 165,
      height: 180,
      child: Stack(
        children: [
          Positioned(
            left: 35,
            child: MovieImage(url: url, height: 180, width: 130),
          ),
          Positioned(
            bottom: 10,
            child: Text(
              rank,
              style: const TextStyle(
                // text 의 기본 padding 값 조절용
                height: 0.72,
                fontSize: 100,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
