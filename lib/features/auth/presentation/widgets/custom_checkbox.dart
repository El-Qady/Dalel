import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppColors.deepBlue,
      checkColor: AppColors.offWhite,
      side: BorderSide(color: AppColors.deepBlue, width: 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
          BlocProvider.of<AuthSignUpCubit>(context).updateTermsAndConditions(value);
        });
      },
    );
  }
}
