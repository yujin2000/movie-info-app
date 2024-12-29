import 'package:movie_info_app/data/dto/movie_detail_dto.dart';
import 'package:movie_info_app/data/dto/movie_response_dto.dart';

abstract interface class MovieDataSource {
  /// 현재 상영중인 영화
  Future<List<MovieResponseDto>> fetchNowPlayingMovies();

  /// 인기순 영화
  Future<List<MovieResponseDto>> fetchPopularMovies();

  /// 평점 높은 순 영화
  Future<List<MovieResponseDto>> fetchTopRatedMovies();

  /// 개봉 예정인 영화
  Future<List<MovieResponseDto>> fetchUpcomingMovies();

  /// 영화 상세 정보 불러오기
  Future<MovieDetailDto?> fetchDetailMovie(int id);
}
