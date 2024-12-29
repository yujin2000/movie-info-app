import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/home/widgets/home_label_view.dart';
import 'package:movie_info_app/presentation/home/widgets/home_main_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeMainView(),
          const SizedBox(height: 10),
          HomeLabelView(label: '현재 상영중'),
          const SizedBox(height: 10),
          HomeLabelView(label: '인기순', isRank: true),
          const SizedBox(height: 10),
          HomeLabelView(label: '평점 높은순'),
          const SizedBox(height: 10),
          HomeLabelView(label: '개봉예정'),
        ],
      ),
    );
  }
}
