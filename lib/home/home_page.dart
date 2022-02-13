import 'package:flutter/material.dart';
import './widgets/appbar/app_bar_widget.dart';
import './widgets/level_button/level_button_widget.dart';
import './widgets/quiz_card/quiz_card_widget.dart';
import './home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(user: controller.user!),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(label: 'Fácil'),
                LevelButtonWidget(label: 'Médio'),
                LevelButtonWidget(label: 'Difícil'),
                LevelButtonWidget(label: 'Perito'),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: controller.quizzes!
                    .map(
                      (e) => QuizCardWidget(
                        title: e.title,
                        completed:
                            '${e.questionAnswered}/${e.questions.length}',
                        percent: e.questionAnswered / e.questions.length,
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
