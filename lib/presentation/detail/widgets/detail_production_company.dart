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
          return SizedBox(
            width: 140,
            child: Image.network(
              productCompanies[index].logoPath!,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
