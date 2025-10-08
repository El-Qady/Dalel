import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/databases/cache/cache_helper.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
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
  void initState() {
    CacheHelper.putData(key: 'isvisit', value: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomSkip(ontap: () {
                navigationPushReplacement(context, '/signUp');
              }),
              const SizedBox(height: 24),
              OnboardingBody(
                cntr: _controller,
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
                context: context,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
