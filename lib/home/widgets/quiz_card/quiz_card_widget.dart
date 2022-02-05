import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_images.dart';
import '../../../core/app_text_styles.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: const Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Gerenciamento de Estado',
            style: AppTextStyles.heading15,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '3 de 10',
                  style: AppTextStyles.body11,
                ),
              ),
              const Expanded(
                flex: 4,
                child: LinearProgressIndicator(
                  value: 0.3,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.chartPrimary,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
