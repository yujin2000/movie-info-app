import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/domain/entity/movie_detail.dart';

abstract interface class MovieRepository {
  /// 현재 상영중인 영화
  Future<List<Movie>> fetchNowPlayingMovies();

  /// 인기순 영화
  Future<List<Movie>> fetchPopularMovies();

  /// 평점 높은 순 영화
  Future<List<Movie>> fetchTopRatedMovies();

  /// 개봉 예정인 영화
  Future<List<Movie>> fetchUpcomingMovies();

  /// 영화 상세 정보 불러오기
  Future<MovieDetail?> fetchDetailMovie(int id);
}
