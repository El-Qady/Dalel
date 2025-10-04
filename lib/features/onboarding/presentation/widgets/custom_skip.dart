import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({
    super.key, this.ontap,
  });
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            AppStrings.skip,
            style: AppTextStyles.poppins400style16,
          ),
        ),
      ),
    );
  }
}
