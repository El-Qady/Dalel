import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/features/onboarding/data/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmothPageIndicator extends StatelessWidget {
  const SmothPageIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onboardingPages.length,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.primaryColor,

        dotWidth: 12,
        dotHeight: 8,
      ),
    );
  }
}
