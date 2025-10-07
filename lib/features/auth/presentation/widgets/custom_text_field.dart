import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext});
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 32),
        child: TextField(
          obscureText: hinttext == AppStrings.password ? true : false,
          decoration: InputDecoration(
            labelText: hinttext,
            labelStyle: AppTextStyles.poppins500style24.copyWith(
              color: AppColors.deepGrey,
              fontSize: 16,
            ),
            border: customBorderStyle(),
            focusedBorder: customBorderStyle(),
            enabledBorder: customBorderStyle(),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder customBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.0),
    borderSide: BorderSide(color: AppColors.deepBlue, width: 1.0),
  );
}
