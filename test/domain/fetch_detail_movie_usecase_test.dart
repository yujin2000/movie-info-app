import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_info_app/domain/entity/genre.dart';
import 'package:movie_info_app/domain/entity/movie_detail.dart';
import 'package:movie_info_app/domain/entity/production_company.dart';
import 'package:movie_info_app/domain/repository/movie_repository.dart';
import 'package:movie_info_app/domain/usecase/fetch_detail_movie_usecase.dart';

class MockMovieRepository extends Mock implements MovieRepository {
  //
}

void main() {
  MockMovieRepository? mockMovieRepository;
  FetchDetailMovieUsecase? fetchDetailMovieUsecase;

  setUp(
    () {
      mockMovieRepository = MockMovieRepository();
      fetchDetailMovieUsecase = FetchDetailMovieUsecase(mockMovieRepository!);
    },
  );

  test('fetchDetailMovieUsecase test', () async {
    int id = 123;
    when(() => mockMovieRepository!.fetchDetailMovie(id)).thenAnswer(
      (_) async => MovieDetail(
        id: id,
        posterPath: 'posterPath',
        title: 'title',
        releaseDate: 'releaseDate',
        tagline: 'tagline',
        runtime: 123,
        genres: [Genre(id: id, name: 'name')],
        overview: 'overview',
        voteAverage: 0.0,
        voteCount: 123,
        popularity: 0.0,
        budget: 123,
        revenue: 123,
        productionCompanies: [
          ProductionCompany(id: id, logoPath: 'logoPath', name: 'name')
        ],
      ),
    );

    final md = await fetchDetailMovieUsecase!.execute(id);

    expect(md!.id, id);
    expect(md.title, 'title');
  });
}
