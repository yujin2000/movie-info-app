import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/home/home_page.dart';
import 'package:movie_info_app/presentation/widgets/theme.dart';

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
      darkTheme: darkTheme,
      home: HomePage(),
    );
  }
}
