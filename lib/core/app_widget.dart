// import 'package:nlw_05_flutter/home/home_page.dart';
import 'package:nlw_05_flutter/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      home: SplashPage(),
    );
  }
}
