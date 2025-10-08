import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/content_onboarding_pageview.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({
    super.key,
    required this.cntr,
    required this.onPageChanged,
  });
  final PageController cntr;
  final void Function(int)? onPageChanged;
  @override
  // ignore: no_logic_in_create_state
  State<OnboardingBody> createState() => _OnboardingBodyState(cntr);
}

class _OnboardingBodyState extends State<OnboardingBody> {
  _OnboardingBodyState(this.controller);
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: widget.onPageChanged,
        controller: controller,
        itemBuilder: (context, index) {
          return ContentOnboardingPageView(index: index);
        },
        itemCount: onboardingPages.length,
      ),
    );
  }
}
