import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_image_decoration.dart';

class ContentOnboardingPageView extends StatelessWidget {
  const ContentOnboardingPageView({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageDecoration(image: onboardingPages[index].image),
        const SizedBox(height: 40),
        Text(
          onboardingPages[index].title,
          style: AppTextStyles.poppins500style24,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        const SizedBox(height: 16),
        Text(
          onboardingPages[index].subtitle,
          style: AppTextStyles.poppins400style16.copyWith(
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }
}
