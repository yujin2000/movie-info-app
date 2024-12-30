import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_info_app/presentation/home/home_view_model.dart';
import 'package:movie_info_app/presentation/home/widgets/home_label_view.dart';
import 'package:movie_info_app/presentation/home/widgets/home_main_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final movieData = ref.watch(homeViewModelProvider);

        // TODO: 데이터 가져올 시간을 표시하는 CircularProgressIndicator 있으면 좋을 듯
        return ListView(
          children: [
            HomeMainView(movieData!.popularMovies.first),
            const SizedBox(height: 10),
            HomeLabelView(
              label: '현재 상영중',
              movies: movieData.nowPlayingMovies,
            ),
            const SizedBox(height: 10),
            HomeLabelView(
              label: '인기순',
              isRank: true,
              movies: movieData.popularMovies,
            ),
            const SizedBox(height: 10),
            HomeLabelView(
              label: '평점 높은순',
              movies: movieData.topRatedMovies,
            ),
            const SizedBox(height: 10),
            HomeLabelView(
              label: '개봉예정',
              movies: movieData.upcomingMovies,
            ),
          ],
        );
      }),
    );
  }
}
