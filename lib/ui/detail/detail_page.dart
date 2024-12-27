import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/detail/widgets/detail_box_office_info.dart';
import 'package:movie_info_app/ui/detail/widgets/detail_category.dart';
import 'package:movie_info_app/ui/detail/widgets/detail_production_company.dart';
import 'package:movie_info_app/ui/detail/widgets/detail_summary.dart';
import 'package:movie_info_app/ui/widgets/movie_image.dart';

class DetailPage extends StatelessWidget {
  List<String> category = ['Animation', 'Adventure', 'Family', 'Comedy'];
  List<String> info = [
    '6.949\n평점',
    '331\n평점투표수',
    '5466.536\n인기점수',
    '\$150000000\n예산'
  ];
  List<String> imageUrls = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // 영화 이미지
          MovieImage(
            url: 'https://picsum.photos/200/300',
            height: 620,
            width: double.infinity,
          ),

          // 영화 요약 소개
          DetailSummary(),
          const Divider(height: 1),

          // 카테고리
          DetailCategory(category),
          const Divider(height: 1),

          // 영화 내용
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
                '선조들로부터 예기치 못한 부름을 받은 ‘모아나’가 부족의 파괴를 막기 위해 전설 속 영웅 ‘마우이’와 새로운 선원들과 함께 숨겨진 고대 섬의 저주를 깨러 떠나는 위험천만한 모험을 담은 스펙터클 오션 어드벤처'),
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
          DetailBoxOfficeInfo(info),
          const SizedBox(height: 25),

          // 영화 제작사
          DetailProductionCompany(imageUrls),
          // 공백
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
