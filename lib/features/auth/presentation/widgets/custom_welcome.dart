import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CustomWelcomeText extends StatelessWidget {
  const CustomWelcomeText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.poppins600style28,
      textAlign: TextAlign.center,
    );
  }
}
