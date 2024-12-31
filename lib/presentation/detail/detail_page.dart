import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_info_app/domain/entity/movie.dart';
import 'package:movie_info_app/presentation/detail/detail_view_model.dart';
import 'package:movie_info_app/presentation/detail/widgets/detail_box_office_info.dart';
import 'package:movie_info_app/presentation/detail/widgets/detail_genre.dart';
import 'package:movie_info_app/presentation/detail/widgets/detail_production_company.dart';
import 'package:movie_info_app/presentation/detail/widgets/detail_summary.dart';

class DetailPage extends StatelessWidget {
  Movie movie;
  String heroTag;
  DetailPage(this.movie, this.heroTag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final movieDetail = ref.watch(detailViewModelProvider(movie.id));

        return ListView(
          children: [
            // 영화 이미지
            Hero(
              tag: heroTag,
              child: SizedBox(
                height: 620,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    movie.posterPath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            // 영화 요약 소개
            DetailSummary(movieDetail!),
            const Divider(height: 1),

            // 카테고리
            DetailGenre(movieDetail.genres),
            const Divider(height: 1),

            // 영화 내용
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(movieDetail.overview),
            ),
            const Divider(height: 1),

            // 영화 흥행정보
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                '흥행정보',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DetailBoxOfficeInfo(movieDetail),
            const SizedBox(height: 25),

            // 영화 제작사
            DetailProductionCompany(movieDetail.productionCompanies),
            // 공백
            const SizedBox(height: 15),
          ],
        );
      }),
    );
  }
}
