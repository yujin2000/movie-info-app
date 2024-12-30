import 'package:movie_info_app/util/tmdb.dart';

class ProductionCompanyDto {
  final int id;
  final String? logoPath;
  final String name;

  ProductionCompanyDto({
    required this.id,
    required this.logoPath,
    required this.name,
  });

  ProductionCompanyDto.fromJson(Map<String, dynamic> map)
      : this(
          id: map['id'],
          logoPath: '${Tmdb.posterImagePrePath}${map['logo_path']}',
          name: map['name'],
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'logoPath': logoPath,
      'name': name,
    };
  }
}
