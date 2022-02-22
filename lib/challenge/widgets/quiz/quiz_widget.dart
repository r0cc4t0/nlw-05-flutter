import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../answer/answer_widget.dart';
import '../../../shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 64),
        Text(
          question.title,
          style: AppTextStyles.heading,
        ),
        const SizedBox(height: 24),
        ...question.answers
            .map(
              (e) => AnswerWidget(
                title: e.title,
                isRight: e.isRight,
              ),
            )
            .toList(),
      ],
    );
  }
}
