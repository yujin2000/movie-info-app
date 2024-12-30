import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_info_app/data/data_source/movie_data_source.dart';
import 'package:movie_info_app/data/data_source/movie_data_source_impl.dart';
import 'package:movie_info_app/data/repository/movie_repository_impl.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';
import 'package:movie_info_app/domain/usecase/fetch_detail_movie_usecase.dart';
import 'package:movie_info_app/domain/usecase/fetch_now_playing_movies_usecase.dart';
import 'package:movie_info_app/domain/usecase/fetch_popular_movies_usecase.dart';
import 'package:movie_info_app/domain/usecase/fetch_top_rated_movies_usecase.dart';
import 'package:movie_info_app/domain/usecase/fetch_upcoming_movies_usecase.dart';

final _movieDataSourceProvider = Provider<MovieDataSource>(
  (ref) => MovieDataSourceImpl(),
);

final _movieRepositoryProvider = Provider<MovieRepository>(
  (ref) {
    final dataSource = ref.read(_movieDataSourceProvider);
    return MovieRepositoryImpl(dataSource);
  },
);

final fetchNowPlayingMoviesUsecaseProvider =
    Provider<FetchNowPlayingMoviesUsecase>(
  (ref) {
    final movieRepo = ref.read(_movieRepositoryProvider);
    return FetchNowPlayingMoviesUsecase(movieRepo);
  },
);

final fetchPopularMoviesUsecaseProvider = Provider<FetchPopularMoviesUsecase>(
  (ref) {
    final movieRepo = ref.read(_movieRepositoryProvider);
    return FetchPopularMoviesUsecase(movieRepo);
  },
);

final fetchTopRatedMoviesUsecaseProvider = Provider<FetchTopRatedMoviesUsecase>(
  (ref) {
    final movieRepo = ref.read(_movieRepositoryProvider);
    return FetchTopRatedMoviesUsecase(movieRepo);
  },
);

final fetchUpcomingMoviesUsecaseProvider = Provider<FetchUpcomingMoviesUsecase>(
  (ref) {
    final movieRepo = ref.read(_movieRepositoryProvider);
    return FetchUpcomingMoviesUsecase(movieRepo);
  },
);

final fetchDetailMovieUsecaseProvider = Provider<FetchDetailMovieUsecase>(
  (ref) {
    final movieRepo = ref.read(_movieRepositoryProvider);
    return FetchDetailMovieUsecase(movieRepo);
  },
);
