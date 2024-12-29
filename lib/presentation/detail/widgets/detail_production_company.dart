import 'package:flutter/material.dart';

class DetailProductionCompany extends StatelessWidget {
  DetailProductionCompany(this.imageUrls);
  List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 140,
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
