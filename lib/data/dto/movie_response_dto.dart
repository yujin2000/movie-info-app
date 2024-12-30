import 'package:movie_info_app/util/tmdb.dart';

class MovieResponseDto {
  final int id;
  final String posterPath;

  MovieResponseDto({required this.id, required this.posterPath});

  MovieResponseDto.fromJson(Map<String, dynamic> map)
      : this(
          id: map['id'],
          posterPath: '${Tmdb.posterImagePrePath}${map['poster_path']}',
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'posterPath': posterPath,
    };
  }
}
