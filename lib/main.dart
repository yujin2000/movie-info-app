import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          // brightness ==> mode 를 정하는 기준
          brightness: Brightness.dark,
        ),
      ),
      home: HomePage(),
    );
  }
}
