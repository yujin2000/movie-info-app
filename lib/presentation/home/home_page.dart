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
        var movieData = ref.watch(homeViewModelProvider);

        return movieData == null
            ? const Center(child: CircularProgressIndicator())
            : ListView(
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
