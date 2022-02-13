import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../../widgets/score_card/score_card_widget.dart';
import '../../../shared/models/user_model.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;

  AppBarWidget({Key? key, required this.user})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(250),
          child: SizedBox(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    gradient: AppGradients.linear,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Olá, ',
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: '${user.name}!',
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
                          image: DecorationImage(
                            image: NetworkImage(user.photoUrl),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 1.0),
                  child: ScoreCardWidget(),
                )
              ],
            ),
          ),
        );
}
