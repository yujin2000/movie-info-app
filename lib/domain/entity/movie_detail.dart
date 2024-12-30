import 'package:movie_info_app/domain/entity/genre.dart';
import 'package:movie_info_app/domain/entity/production_company.dart';

class MovieDetail {
  /// 영화 아이디
  final int id;

  /// 영화 이미지 경로
  final String posterPath;

  /// 영화 제목
  final String title;

  /// 개봉일
  final String releaseDate;

  /// 짧은 소개
  final String tagline;

  /// 러닝타임
  final int runtime;

  /// 장르
  final List<Genre> genres;

  /// 개요
  final String overview;

  /// 평점
  final double voteAverage;

  /// 평점 투표수
  final int voteCount;

  /// 인기 점수
  final double popularity;

  /// 예산
  final int budget;

  /// 수익
  final int revenue;

  /// 제작사
  final List<ProductionCompany> productionCompanies;

  MovieDetail({
    required this.id,
    required this.posterPath,
    required this.title,
    required this.releaseDate,
    required this.tagline,
    required this.runtime,
    required this.genres,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.popularity,
    required this.budget,
    required this.revenue,
    required this.productionCompanies,
  });
}
