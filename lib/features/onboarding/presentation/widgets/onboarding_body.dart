import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/content_onboarding_pageview.dart';

class OnboardingBody extends StatefulWidget {
  OnboardingBody({super.key, required this.controller, this.onPageChanged});
  PageController controller;
  void Function(int)? onPageChanged;
  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: widget.onPageChanged,
        controller: widget.controller,
        itemBuilder: (context, index) {
          return ContentOnboardingPageView(index: index);
        },
        itemCount: onboardingPages.length,
      ),
    );
  }
}
