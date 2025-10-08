import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class AlreadyHaveTEXT extends StatelessWidget {
  const AlreadyHaveTEXT({super.key, required this.text1, required this.text2,this.recognizer});
  final String text1;
  final String text2 ;
 final GestureRecognizer? recognizer;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: text1,
          style: AppTextStyles.poppins400style16.copyWith(
            fontSize: 12,
            color: AppColors.deepGrey,
          ),
          children: [
            TextSpan(
              recognizer: recognizer,
              text: text2,
              style: AppTextStyles.poppins400style16.copyWith(
                fontSize: 12,
                color: AppColors.lightGrey,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
