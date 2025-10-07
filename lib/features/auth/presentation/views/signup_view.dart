import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/already_have_text.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_checkbox.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/terms_and_checkbox.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_botton.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.only(top: 108),
            sliver: CustomWelcomeText(),
          ),
          SliverToBoxAdapter(child: Gap(16)),
          CustomTextField(hinttext: AppStrings.fristName),
          CustomTextField(hinttext: AppStrings.lastName),
          CustomTextField(hinttext: AppStrings.emailAddress),
          CustomTextField(hinttext: AppStrings.password),
          TermsAndCheckBox(),
          SliverToBoxAdapter(child: Gap(105)),
          SliverToBoxAdapter(
            child: CustomBotton(buttonText: AppStrings.signUp),
          ),
          SliverToBoxAdapter(child: Gap(16)),
          const AlreadyHaveTEXT(),
        ],
      ),
    );
  }
}

