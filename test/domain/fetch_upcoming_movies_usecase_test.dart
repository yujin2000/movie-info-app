import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';
import 'package:movie_info_app/domain/usecase/fetch_upcoming_movies_usecase.dart';

class MockMovieRepository extends Mock implements MovieRepository {
  //
}

void main() {
  MockMovieRepository? mockMovieRepository;
  FetchUpcomingMoviesUsecase? fetchUpcomingMoviesUsecase;
  setUp(() {
    mockMovieRepository = MockMovieRepository();
    fetchUpcomingMoviesUsecase =
        FetchUpcomingMoviesUsecase(mockMovieRepository!);
  });
  test('fetchUpcomingMoviesUsecase test', () async {
    when(
      () => mockMovieRepository!.fetchUpcomingMovies(),
    ).thenAnswer(
      (_) async => [Movie(id: 123, posterPath: 'posterPath')],
    );

    final movie = await fetchUpcomingMoviesUsecase!.execute();

    expect(movie.length, 1);
    expect(movie.first.id, 123);
  });
}
