import 'package:movie_info_app/data/data_source/movie_data_source.dart';
import 'package:movie_info_app/domain/entity/genre.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/domain/entity/movie_detail.dart';
import 'package:movie_info_app/domain/entity/production_company.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._movieDataSource);
  final MovieDataSource _movieDataSource;

  @override
  Future<MovieDetail?> fetchDetailMovie(int id) async {
    final dm = await _movieDataSource.fetchDetailMovie(id);
    if (dm != null) {
      return MovieDetail(
        id: dm.id,
        posterPath: dm.posterPath,
        title: dm.title,
        releaseDate: dm.releaseDate,
        tagline: dm.tagline,
        runtime: dm.runtime,
        genres: dm.genres.map((e) => Genre(id: e.id, name: e.name)).toList(),
        overview: dm.overview,
        voteAverage: dm.voteAverage,
        voteCount: dm.voteCount,
        popularity: dm.popularity,
        revenue: dm.revenue,
        productionCompanies: dm.productionCompanies
            .map((e) =>
                ProductionCompany(id: e.id, logoPath: e.logoPath, name: e.name))
            .toList(),
      );
    }
    return null;
  }

  @override
  Future<List<Movie>> fetchNowPlayingMovies() async {
    final movie = await _movieDataSource.fetchNowPlayingMovies();

    return movie
        .map(
          (e) => Movie(id: e.id, posterPath: e.posterPath),
        )
        .toList();
  }

  @override
  Future<List<Movie>> fetchPopularMovies() async {
    final movie = await _movieDataSource.fetchPopularMovies();

    return movie
        .map(
          (e) => Movie(id: e.id, posterPath: e.posterPath),
        )
        .toList();
  }

  @override
  Future<List<Movie>> fetchTopRatedMovies() async {
    final movie = await _movieDataSource.fetchTopRatedMovies();

    return movie
        .map(
          (e) => Movie(id: e.id, posterPath: e.posterPath),
        )
        .toList();
  }

  @override
  Future<List<Movie>> fetchUpcomingMovies() async {
    final movie = await _movieDataSource.fetchUpcomingMovies();

    return movie
        .map(
          (e) => Movie(id: e.id, posterPath: e.posterPath),
        )
        .toList();
  }
}
