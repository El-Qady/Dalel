import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_botton.dart';

Widget buildCustomBotton({required int currentIndex, required PageController controller}) {
    return currentIndex == onboardingPages.length - 1
        ? Column(
            children: [
              CustomBotton(
                buttonText: AppStrings.createAccount,
                ontap: () {
                  // Navigate to home screen
                },
              ),
              CustomBotton(
                buttonText: AppStrings.loginNow,
                isLast: true,
                ontap: () {
                  // Navigate to sign-in screen
                },
              ),
            ],
          )
        : CustomBotton(
            buttonText: AppStrings.next,
            ontap: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          );
  }