import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.heading,
        ),
        const SizedBox(height: 24),
        const AnswerWidget(
          title: 'Kit de desenvolvimento de interface de usuário',
        ),
        const AnswerWidget(
          isRight: true,
          isSelected: true,
          title: 'Possibilita a criação de aplicativos compilados nativamente',
        ),
        const AnswerWidget(
          title: 'Acho que é uma marca de café do Himalaia',
        ),
        const AnswerWidget(
          title: 'Possibilita a criação de desktops que são muito incríveis',
        ),
      ],
    );
  }
}
