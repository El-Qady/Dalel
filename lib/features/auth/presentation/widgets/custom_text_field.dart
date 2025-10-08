import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hinttext,
    this.onChanged,
    this.onSubmitted,
  });
  final String hinttext;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 32),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Field is required';
          }
          return null;
        },
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
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
    );
  }
}

OutlineInputBorder customBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.0),
    borderSide: BorderSide(color: AppColors.deepBlue, width: 1.0),
  );
}
