import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/entity/production_company.dart';

class DetailProductionCompany extends StatelessWidget {
  DetailProductionCompany(this.productCompanies);
  List<ProductionCompany> productCompanies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: productCompanies.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final path = productCompanies[index].logoPath;

          return Container(
            width: 140,
            // center 로 지정하면 container 사이즈에 맞게 이미지가 잘 맞춰서 들어감
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // 투명도 0.9 지정
              color: Colors.white.withOpacity(0.9),
            ),
            // path 가 null 이라 이미지를 못 가져오면 제작사 이름 출력
            child: path!.endsWith('null')
                ? Text(
                    textAlign: TextAlign.center,
                    productCompanies[index].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Image.network(
                    path,
                    fit: BoxFit.cover,
                  ),
          );
        },
      ),
    );
  }
}
