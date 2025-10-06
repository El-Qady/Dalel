import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/onboarding/presentation/functions/build_custom_botton.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_skip.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomSkip(),
              const SizedBox(height: 24),
              OnboardingBody(
                controller: _controller,
                onPageChanged: (index) {
                  _controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
                  currentIndex = index;
                  setState(() {});
                },
              ),
              SmothPageIndicator(controller: _controller),
              const SizedBox(height: 30),
              buildCustomBotton(
                controller: _controller,
                currentIndex: currentIndex,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
