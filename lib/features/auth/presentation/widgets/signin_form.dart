import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/flutter_toast.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignin_cubit/auth_signin_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignin_cubit/auth_signin_cubit_state.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit_state.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_text_field_signin.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_text_field_signup.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_botton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthSignInCubitCubit, AuthSignInCubitState>(
      listener: (context, state) {
        if (state is AuthSignInCubitSuccessState) {
          flutterToastError('Successfully, Welcome Back', color: Colors.green);
          navigationPushReplacement(context, '/home');
        }
        if (state is AuthSignInCubitFailureState) {
          flutterToastError(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthSignInCubitCubit authsignincubit =
            BlocProvider.of<AuthSignInCubitCubit>(context);
        return Form(
          key: authsignincubit.signinFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomTextFormFieldSignIn(
                  hinttext: AppStrings.emailAddress,
                  onChanged: (email) {
                    authsignincubit.emailAddress = email;
                  },
                  onSubmitted: (email) {
                    authsignincubit.emailAddress = email;
                  },
                ),
                CustomTextFormFieldSignIn(
                  hinttext: AppStrings.password,
                  onChanged: (password) {
                    authsignincubit.password = password;
                  },
                  onSubmitted: (password) {
                    authsignincubit.password = password;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ForgetPassword(ontap: () {}),
                ),
                Gap(102),
                state is AuthSignInCubitLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : CustomBotton(
                        buttonText: AppStrings.signIn,
                        ontap: () {
                          if (authsignincubit.signinFormKey.currentState!
                              .validate()) {
                            authsignincubit.signInWithEmailAndPassword();
                          }
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key, required this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: Text(
        AppStrings.forgotPassword,
        style: AppTextStyles.poppins600style28.copyWith(
          fontSize: 12,
          color: AppColors.deepGrey,
        ),
      ),
    );
  }
}
