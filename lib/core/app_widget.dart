import 'package:flutter/material.dart';
// import '../splash/splash_page.dart';
// import '../home/home_page.dart';
import '../challenge/challenge_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DevQuiz',
      home: ChallengePage(),
    );
  }
}
