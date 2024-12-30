import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/presentation/providers.dart';

class HomeState {
  List<Movie> nowPlayingMovies;
  List<Movie> popularMovies;
  List<Movie> topRatedMovies;
  List<Movie> upcomingMovies;

  HomeState({
    required this.nowPlayingMovies,
    required this.popularMovies,
    required this.topRatedMovies,
    required this.upcomingMovies,
  });

  HomeState copy({
    List<Movie>? nowPlayingMovies,
    List<Movie>? popularMovies,
    List<Movie>? topRatedMovies,
    List<Movie>? upcomingMovies,
  }) {
    return HomeState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        popularMovies: popularMovies ?? this.popularMovies,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies);
  }
}

class HomeViewModel extends Notifier<HomeState?> {
  @override
  HomeState? build() {
    print('HomeViewModel build!!!');
    fetchMovies();
    return null;
  }

  /// 개봉한 영화, 인기순 영화, 평점 높은순 영화, 개봉 예정 영화 데이터를 가져온다
  Future<void> fetchMovies() async {
    final nowPlayingUsecase = ref.read(fetchNowPlayingMoviesUsecaseProvider);
    final nowPlaying = await nowPlayingUsecase.execute();

    final popularUsecase = ref.read(fetchPopularMoviesUsecaseProvider);
    final popular = await popularUsecase.execute();

    final topRatedUsecase = ref.read(fetchTopRatedMoviesUsecaseProvider);
    final topRated = await topRatedUsecase.execute();

    final upcomingUsecase = ref.read(fetchUpcomingMoviesUsecaseProvider);
    final upcoming = await upcomingUsecase.execute();

    state = HomeState(
      nowPlayingMovies: nowPlaying,
      popularMovies: popular,
      topRatedMovies: topRated,
      upcomingMovies: upcoming,
    );
  }
}

final homeViewModelProvider = NotifierProvider<HomeViewModel, HomeState?>(
  () {
    return HomeViewModel();
  },
);
