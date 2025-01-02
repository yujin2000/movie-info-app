import 'package:flutter/material.dart';

class DetailOverview extends StatelessWidget {
  DetailOverview(this.overview);
  String overview;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      // 영화 overview 가 '' 이면 등록된 정보가 없다는 문구 표시
      child: overview == ''
          ? const Text(
              '등록된 영화 개요가 없습니다.',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          : Text(overview),
    );
  }
}
