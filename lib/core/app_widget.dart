import 'package:flutter/material.dart';
import 'package:nlw_05_flutter/home/home_page.dart';
// import 'package:nlw_05_flutter/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DevQuiz',
      home: HomePage(),
    );
  }
}
