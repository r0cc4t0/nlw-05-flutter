import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../../../shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
  }) : super(key: key);

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
          const SizedBox(height: 24),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  completed,
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(value: percent),
              )
            ],
          )
        ],
      ),
    );
  }
}
