import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_botton.dart';

Widget buildCustomBotton({
  required int currentIndex,
  required PageController controller,
  required BuildContext context,
}) {
  return currentIndex == onboardingPages.length - 1
      ? Column(
          children: [
            CustomBotton(
              buttonText: AppStrings.createAccount,
              ontap: () {
                navigationPushReplacement(context, '/signUp');
              },
            ),
            CustomBotton(
              buttonText: AppStrings.loginNow,
              isLast: true,
              ontap: () {
                navigationPushReplacement(context, '/signIn');
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
