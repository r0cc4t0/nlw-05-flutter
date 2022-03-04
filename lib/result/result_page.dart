import 'package:flutter/material.dart';
import '../core/core.dart';
import '../challenge/widgets/next_button/next_button_widget.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;

  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.only(top: 96),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  'Parabéns!',
                  style: AppTextStyles.heading40,
                ),
                const SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: 'Você concluiu',
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                        text: '\n$title',
                        style: AppTextStyles.bodyBold,
                      ),
                      TextSpan(
                        text: '\ncom $length de $length acertos.',
                        style: AppTextStyles.body,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64),
                        child: NextButtonWidget.purple(
                          buttonLabel: 'Compartilhar',
                          buttonOnTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64),
                        child: NextButtonWidget.white(
                          buttonLabel: 'Voltar ao Início',
                          buttonOnTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
