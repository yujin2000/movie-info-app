import 'package:flutter/material.dart';

class DetailSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text('2024-11-17'),
            ],
          ),
          Text('summary'),
          Text('running time'),
        ],
      ),
    );
  }
}
