import 'package:movie_info_app/data/dto/genre_dto.dart';
import 'package:movie_info_app/data/dto/production_company_dto.dart';

class MovieDetailDto {
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
  final List<GenreDto> genres;

  /// 개요
  final String overview;

  /// 평점
  final double voteAverage;

  /// 평점 투표수
  final int voteCount;

  /// 인기 점수
  final double popularity;

  /// 수익
  final int revenue;

  /// 제작사
  final List<ProductionCompanyDto> productionCompanies;

  MovieDetailDto({
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
    required this.revenue,
    required this.productionCompanies,
  });

  MovieDetailDto.fromJson(Map<String, dynamic> map)
      : this(
          id: map['id'],
          posterPath: map['poster_path'],
          title: map['title'],
          releaseDate: map['release_date'],
          tagline: map['tagline'],
          runtime: map['runtime'],
          genres: List.from(map['genres'])
              .map((e) => GenreDto.fromJson(e))
              .toList(),
          overview: map['overview'],
          voteAverage: map['vote_average'],
          voteCount: map['vote_count'],
          popularity: map['popularity'],
          revenue: map['revenue'],
          productionCompanies: List.from(map['production_companies'])
              .map((e) => ProductionCompanyDto.fromJson(e))
              .toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'posterPath': posterPath,
      'title': title,
      'releaseDate': releaseDate,
      'tagline': tagline,
      'runtime': runtime,
      'genres': genres.map((e) => e.toJson()).toList(),
      'overview': overview,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'popularity': popularity,
      'revenue': revenue,
      'productionCompanies':
          productionCompanies.map((e) => e.toJson()).toList(),
    };
  }
}
