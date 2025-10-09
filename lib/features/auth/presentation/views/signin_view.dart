import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_assets.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/already_have_text.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_signin_container.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/signin_form.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomContainerSignIn()),
          SliverToBoxAdapter(child: Gap(32)),
          SliverToBoxAdapter(
            child: CustomWelcomeText(text: AppStrings.welcomeBack),
          ),
          SliverToBoxAdapter(child: Gap(16)),
          SliverToBoxAdapter(child: SignUpForm()),
          SliverToBoxAdapter(child: Gap(16)),
          AlreadyHaveTEXT(
            text1: AppStrings.dontHaveAnAccount,
            text2: AppStrings.signUp,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                navigationPop(context);
              },
          ),
        ],
      ),
    );
  }
}
