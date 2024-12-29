import 'package:flutter_test/flutter_test.dart';
import 'package:movie_info_app/data/data_source/movie_data_source_impl.dart';

void main() {
  MovieDataSourceImpl dataSource = MovieDataSourceImpl();
  test('MovieDataSource test: fetchDetailMovie', () async {
    final dm = await dataSource.fetchDetailMovie(845781);
    expect(dm != null, true);
    expect(dm!.id, 845781);
    expect(dm.popularity, 4760.061);
    expect(dm.posterPath, '/4zNUNhVpSqFggxqvdSXDRzy1QwE.jpg');
    expect(dm.releaseDate, '2024-10-31');
    expect(dm.revenue, 182861176);
    expect(dm.runtime, 124);
    expect(dm.title, '레드 원');
    expect(dm.voteAverage, 7.027);
    expect(dm.voteCount, 1532);
    expect(dm.genres.isNotEmpty, true);
    expect(dm.productionCompanies.isNotEmpty, true);
  });

  test('MovieDataSource test: fetchNowPlayingMovies', () async {
    final movie = await dataSource.fetchNowPlayingMovies();
    expect(movie.isNotEmpty, true);
    expect(movie.length, 20);
  });

  test('MovieDataSource test: fetchPopularMovies', () async {
    final movie = await dataSource.fetchPopularMovies();
    expect(movie.isNotEmpty, true);
    expect(movie.length, 20);
  });

  test('MovieDataSource test: fetchTopRatedMovies', () async {
    final movie = await dataSource.fetchTopRatedMovies();
    expect(movie.isNotEmpty, true);
    expect(movie.length, 20);
  });

  test('MovieDataSource test: fetchUpcomingMovies', () async {
    final movie = await dataSource.fetchUpcomingMovies();
    expect(movie.isNotEmpty, true);
    expect(movie.length, 20);
  });
}
