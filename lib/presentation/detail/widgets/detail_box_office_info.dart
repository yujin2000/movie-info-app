import 'package:flutter/material.dart';

class DetailBoxOfficeInfo extends StatelessWidget {
  DetailBoxOfficeInfo(this.info);
  List<String> info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: info.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Text(
              info[index],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
