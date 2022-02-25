import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../answer/answer_widget.dart';
import '../../../shared/models/question_model.dart';
import '../../../shared/models/answer_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int selectedIndex = -1;

  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 64),
        Text(
          widget.question.title,
          style: AppTextStyles.heading,
        ),
        const SizedBox(height: 24),
        for (var i = 0; i < widget.question.answers.length; i++)
          AnswerWidget(
            answer: answer(i),
            isSelected: selectedIndex == i,
            onTap: () {
              selectedIndex = i;
              setState(() {});
            },
          )
      ],
    );
  }
}
