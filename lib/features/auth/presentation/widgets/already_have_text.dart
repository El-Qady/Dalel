import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class AlreadyHaveTEXT extends StatelessWidget {
  const AlreadyHaveTEXT({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: AppStrings.alreadyHaveAnAccount,
          style: AppTextStyles.poppins400style16.copyWith(
            fontSize: 12,
            color: AppColors.deepGrey,
          ),
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  navigationPush(context, '/signIn');
                },
              text: AppStrings.signIn,
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
