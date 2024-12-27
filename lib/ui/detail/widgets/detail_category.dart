import 'package:flutter/material.dart';

class DetailCategory extends StatelessWidget {
  DetailCategory(this.category);
  List<String> category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 35,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          separatorBuilder: (context, index) => const SizedBox(width: 5),
          itemBuilder: (context, index) {
            return TextButton(
              // 버튼을 비활성화하여 버튼처럼 안 보이도록
              onPressed: null,
              style: Theme.of(context).textButtonTheme.style,
              child: Text(
                category[index],
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
