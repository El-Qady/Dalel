import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/databases/cache/cache_helper.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    CacheHelper.getData(key: 'isvisit') == true
        ? FirebaseAuth.instance.currentUser == null
              ? delayedNavigation(context, '/signUp')
              : delayedNavigation(context, '/home')
        : delayedNavigation(context, '/onBoarding');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

void delayedNavigation(context, String routeName) {
  Future.delayed(const Duration(seconds: 2), () {
    navigationPushReplacement(context, routeName);
  });
}
