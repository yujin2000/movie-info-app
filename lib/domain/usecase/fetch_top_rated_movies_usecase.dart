import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';

class FetchTopRatedMoviesUsecase {
  FetchTopRatedMoviesUsecase(this._movieRepo);
  final MovieRepository _movieRepo;

  Future<List<Movie>> execute() async {
    return await _movieRepo.fetchTopRatedMovies();
  }
}
