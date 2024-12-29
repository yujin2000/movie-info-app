import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:movie_info_app/data/dto/movie_response_dto.dart';

void main() {
  test('MovieResponseDto test', () {
    String sample = """
{
"id": 845781,
"poster_path": "/4zNUNhVpSqFggxqvdSXDRzy1QwE.jpg"
}
""";

    final movie = MovieResponseDto.fromJson(jsonDecode(sample));

    expect(movie.id, 845781);
    expect(movie.posterPath, '/4zNUNhVpSqFggxqvdSXDRzy1QwE.jpg');
  });
}
