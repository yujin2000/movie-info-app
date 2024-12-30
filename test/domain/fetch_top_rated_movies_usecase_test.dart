import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';
import 'package:movie_info_app/domain/usecase/fetch_top_rated_movies_usecase.dart';

class MockMovieRepository extends Mock implements MovieRepository {
  //
}

void main() {
  MockMovieRepository? mockMovieRepository;
  FetchTopRatedMoviesUsecase? fetchTopRatedMoviesUsecase;
  setUp(() {
    mockMovieRepository = MockMovieRepository();
    fetchTopRatedMoviesUsecase =
        FetchTopRatedMoviesUsecase(mockMovieRepository!);
  });
  test('fetchTopRatedMoviesUsecase test', () async {
    when(
      () => mockMovieRepository!.fetchTopRatedMovies(),
    ).thenAnswer(
      (_) async => [Movie(id: 123, posterPath: 'posterPath')],
    );

    final movie = await fetchTopRatedMoviesUsecase!.execute();

    expect(movie.length, 1);
    expect(movie.first.id, 123);
  });
}
