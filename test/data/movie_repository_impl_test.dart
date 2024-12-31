import 'package:flutter_test/flutter_test.dart';
import 'package:movie_info_app/data/data_source/movie_data_source.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_info_app/data/dto/genre_dto.dart';
import 'package:movie_info_app/data/dto/movie_detail_dto.dart';
import 'package:movie_info_app/data/dto/movie_response_dto.dart';
import 'package:movie_info_app/data/dto/production_company_dto.dart';
import 'package:movie_info_app/data/repository/movie_repository_impl.dart';

class MockMovieDataSource extends Mock implements MovieDataSource {
  //
}

void main() {
  MockMovieDataSource? mockMovieDataSource;
  MovieRepositoryImpl? movieRepositoryImpl;

  setUp(() {
    mockMovieDataSource = MockMovieDataSource();
    movieRepositoryImpl = MovieRepositoryImpl(mockMovieDataSource!);
  });

  test('MovieRepositoryImpl test: fetchDetailMovie', () async {
    int id = 123;
    when(() => mockMovieDataSource!.fetchDetailMovie(id)).thenAnswer(
      (_) async => MovieDetailDto(
        id: id,
        posterPath: 'posterPath',
        title: 'title',
        releaseDate: 'releaseDate',
        tagline: 'tagline',
        runtime: 123,
        genres: [GenreDto(id: id, name: 'name')],
        overview: 'overview',
        voteAverage: 0.0,
        voteCount: 123,
        popularity: 0.0,
        revenue: 123,
        budget: 123,
        productionCompanies: [
          ProductionCompanyDto(id: id, logoPath: 'logoPath', name: 'name')
        ],
      ),
    );

    final dm = await movieRepositoryImpl!.fetchDetailMovie(id);

    expect(dm!.id, id);
    expect(dm.posterPath, 'posterPath');
  });

  test('MovieRepositoryImpl test: fetchNowPlayingMovies', () async {
    when(() => mockMovieDataSource!.fetchNowPlayingMovies()).thenAnswer(
      (_) async => [
        MovieResponseDto(id: 123, posterPath: 'poster.jpg'),
      ],
    );

    final result = await movieRepositoryImpl!.fetchNowPlayingMovies();

    expect(result.length, 1);
    expect(result.first.id, 123);
  });

  test('MovieRepositoryImpl test: fetchPopularMovies', () async {
    when(() => mockMovieDataSource!.fetchPopularMovies()).thenAnswer(
      (_) async => [
        MovieResponseDto(id: 123, posterPath: 'poster.jpg'),
      ],
    );

    final result = await movieRepositoryImpl!.fetchPopularMovies();

    expect(result.length, 1);
    expect(result.first.id, 123);
  });

  test('MovieRepositoryImpl test: fetchTopRatedMovies', () async {
    when(() => mockMovieDataSource!.fetchTopRatedMovies()).thenAnswer(
      (_) async => [
        MovieResponseDto(id: 123, posterPath: 'poster.jpg'),
      ],
    );

    final result = await movieRepositoryImpl!.fetchTopRatedMovies();

    expect(result.length, 1);
    expect(result.first.id, 123);
  });

  test('MovieRepositoryImpl test: fetchUpcomingMovies', () async {
    when(() => mockMovieDataSource!.fetchUpcomingMovies()).thenAnswer(
      (_) async => [
        MovieResponseDto(id: 123, posterPath: 'poster.jpg'),
      ],
    );

    final result = await movieRepositoryImpl!.fetchUpcomingMovies();

    expect(result.length, 1);
    expect(result.first.id, 123);
  });
}
