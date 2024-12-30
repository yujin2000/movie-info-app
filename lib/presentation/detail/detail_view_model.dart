import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_info_app/domain/entity/movie_detail.dart';
import 'package:movie_info_app/presentation/providers.dart';

class DetailViewModel extends AutoDisposeFamilyNotifier<MovieDetail?, int> {
  @override
  MovieDetail? build(int arg) {
    fetchDetailMovie();
    return null;
  }

  Future<void> fetchDetailMovie() async {
    final fetchDetailMovieUsecase = ref.read(fetchDetailMovieUsecaseProvider);
    final result = await fetchDetailMovieUsecase.execute(arg);
    state = result;
  }
}

final detailViewModelProvider =
    NotifierProvider.autoDispose.family<DetailViewModel, MovieDetail?, int>(
  () {
    return DetailViewModel();
  },
);
