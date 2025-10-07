import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_checkbox.dart';

class TermsAndCheckBox extends StatelessWidget {
  const TermsAndCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          CustomCheckBox(),
          const SizedBox(width: 8),
          Text.rich(
            textAlign: TextAlign.left,
            TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: AppTextStyles.poppins400style16.copyWith(
                fontSize: 12,
                color: AppColors.deepGrey,
              ),
              children: [
                TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: AppTextStyles.poppins400style16.copyWith(
                    fontSize: 12,
                    color: AppColors.deepGrey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
