import 'package:dio/dio.dart';
import 'package:movie_info_app/data/data_source/movie_data_source.dart';
import 'package:movie_info_app/data/dto/movie_detail_dto.dart';
import 'package:movie_info_app/data/dto/movie_response_dto.dart';
import 'package:movie_info_app/util/lang.dart';

class MovieDataSourceImpl implements MovieDataSource {
  final Dio _client = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/movie',
      validateStatus: (status) => true,
    ),
  );

  final String api = const String.fromEnvironment("TMDB_API_KEY",
      defaultValue: 'default Value');

  final String API_KEY = '4929957297e7a898237f95356f039a56';

  @override
  Future<MovieDetailDto?> fetchDetailMovie(int id) async {
    try {
      final response = await _client.get('/$id', queryParameters: {
        'language': Lang.KO_KR,
        'api_key': API_KEY,
      });

      if (response.statusCode == 200) {
        final data = MovieDetailDto.fromJson(response.data);

        return data;
      }
    } catch (e) {
      print('fetchDetailMovie => $e');
      return null;
    }
    return null;
  }

  @override
  Future<List<MovieResponseDto>> fetchNowPlayingMovies() async {
    try {
      final response = await _client.get('/now_playing', queryParameters: {
        'language': Lang.KO_KR,
        'api_key': API_KEY,
      });

      if (response.statusCode == 200) {
        final results = response.data['results'];

        return List.from(results).map(
          (e) {
            return MovieResponseDto.fromJson(e);
          },
        ).toList();
      }
    } catch (e) {
      print('fetchNowPlayingMovies => $e');
      return [];
    }

    return [];
  }

  @override
  Future<List<MovieResponseDto>> fetchPopularMovies() async {
    try {
      final response = await _client.get('/popular', queryParameters: {
        'language': Lang.KO_KR,
        'api_key': API_KEY,
      });

      if (response.statusCode == 200) {
        final results = response.data['results'];

        return List.from(results).map(
          (e) {
            return MovieResponseDto.fromJson(e);
          },
        ).toList();
      }
    } catch (e) {
      print('fetchPopularMovies => $e');
      return [];
    }

    return [];
  }

  @override
  Future<List<MovieResponseDto>> fetchTopRatedMovies() async {
    try {
      final response = await _client.get('/top_rated', queryParameters: {
        'language': Lang.KO_KR,
        'api_key': API_KEY,
      });

      if (response.statusCode == 200) {
        final results = response.data['results'];

        return List.from(results).map(
          (e) {
            return MovieResponseDto.fromJson(e);
          },
        ).toList();
      }
    } catch (e) {
      print('fetchTopRatedMovies => $e');
      return [];
    }

    return [];
  }

  @override
  Future<List<MovieResponseDto>> fetchUpcomingMovies() async {
    try {
      final response = await _client.get('/upcoming', queryParameters: {
        'language': Lang.KO_KR,
        'api_key': API_KEY,
      });

      if (response.statusCode == 200) {
        final results = response.data['results'];

        return List.from(results).map(
          (e) {
            return MovieResponseDto.fromJson(e);
          },
        ).toList();
      }
    } catch (e) {
      print('fetchUpcomingMovies => $e');
      return [];
    }

    return [];
  }
}
