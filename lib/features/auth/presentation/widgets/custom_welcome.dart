import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CustomWelcomeText extends StatelessWidget {
  const CustomWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        AppStrings.welcome,
        style: AppTextStyles.poppins600style28,
        textAlign: TextAlign.center,
      ),
    );
  }
}
