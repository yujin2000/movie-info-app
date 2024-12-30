import 'package:movie_info_app/domain/entity/movie_detail.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';

class FetchDetailMovieUsecase {
  FetchDetailMovieUsecase(this._movieRepo);
  final MovieRepository _movieRepo;

  Future<MovieDetail?> execute(int id) async {
    return await _movieRepo.fetchDetailMovie(id);
  }
}
