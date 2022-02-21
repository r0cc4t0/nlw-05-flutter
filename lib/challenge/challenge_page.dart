import 'package:flutter/material.dart';
import '../challenge/widgets/question_indicator/question_indicator_widget.dart';
import './widgets/quiz/quiz_widget.dart';
import './widgets/next_button/next_button_widget.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BackButton(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const QuestionIndicatorWidget(),
            ],
          ),
        ),
      ),
      body: const QuizWidget(
        title: 'O que o Flutter faz em sua totalidade?',
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: NextButtonWidget.white(
                  buttonLabel: 'Fácil',
                  buttonOnTap: () {},
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: NextButtonWidget.green(
                  buttonLabel: 'Confirmar',
                  buttonOnTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
