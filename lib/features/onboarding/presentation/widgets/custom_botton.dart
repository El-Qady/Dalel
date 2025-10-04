import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    this.ontap,
    required this.buttonText,
    this.isLast = false,
  });
  final VoidCallback? ontap;
  final String buttonText;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        decoration: BoxDecoration(
          color: isLast ? null : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            buttonText,

            style: AppTextStyles.poppins500style24.copyWith(
              color: isLast ? AppColors.deepGrey : Colors.white,

              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
