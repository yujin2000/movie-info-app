import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';
import 'package:movie_info_app/domain/usecase/fetch_now_playing_movies_usecase.dart';

class MockMovieRepository extends Mock implements MovieRepository {
  //
}

void main() {
  MockMovieRepository? mockMovieRepository;
  FetchNowPlayingMoviesUsecase? fetchNowPlayingMoviesUsecase;
  setUp(() {
    mockMovieRepository = MockMovieRepository();
    fetchNowPlayingMoviesUsecase =
        FetchNowPlayingMoviesUsecase(mockMovieRepository!);
  });
  test('fetchNowPlayingMoviesUsecase test', () async {
    when(
      () => mockMovieRepository!.fetchNowPlayingMovies(),
    ).thenAnswer(
      (_) async => [Movie(id: 123, posterPath: 'posterPath')],
    );

    final movie = await fetchNowPlayingMoviesUsecase!.execute();

    expect(movie.length, 1);
    expect(movie.first.id, 123);
  });
}
