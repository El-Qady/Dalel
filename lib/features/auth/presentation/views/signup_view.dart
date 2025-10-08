import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/already_have_text.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/signup_form.dart';
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
          SliverToBoxAdapter(child: SignUpForm()),
          SliverToBoxAdapter(child: Gap(16)),
          AlreadyHaveTEXT(
            text1: AppStrings.alreadyHaveAnAccount,
            text2: AppStrings.signIn,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                navigationPush(context, '/signIn');
              },
          ),
        ],
      ),
    );
  }
}

