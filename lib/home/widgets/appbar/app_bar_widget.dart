import 'package:flutter/material.dart';
import 'package:nlw_05_flutter/core/app_gradients.dart';
import 'package:nlw_05_flutter/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Olá, ',
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                          text: 'r0cc4t0!',
                          style: AppTextStyles.titleBold,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/60143866?v=4'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
}
