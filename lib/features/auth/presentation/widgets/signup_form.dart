import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/flutter_toast.dart';
import 'package:flutter_application_1/core/functions/navigation.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_strings.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit_state.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/custom_text_field_signup.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/terms_and_checkbox.dart';
import 'package:flutter_application_1/features/onboarding/presentation/widgets/custom_botton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthSignUpCubit, AuthSignUpCubitState>(
      listener: (context, state) {
        if (state is AuthSignupCubitSuccessState) {
          flutterToastError(
            'successfully ,Please verify your email',
            color: Colors.green,
          );
          navigationPushReplacement(context, '/signIn');
        }
        if (state is AuthSignupCubitFailureState) {
          flutterToastError(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthSignUpCubit authsignupcubit = BlocProvider.of<AuthSignUpCubit>(
          context,
        );
        return Form(
          key: authsignupcubit.signupFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomTextFormFieldSignUp(
                  hinttext: AppStrings.fristName,
                  onChanged: (fristName) {
                    authsignupcubit.fristName = fristName;
                  },
                  onSubmitted: (fristName) {
                    authsignupcubit.fristName = fristName;
                  },
                ),
                CustomTextFormFieldSignUp(
                  hinttext: AppStrings.lastName,
                  onChanged: (lastName) {
                    authsignupcubit.lastName = lastName;
                  },
                  onSubmitted: (lastName) {
                    authsignupcubit.lastName = lastName;
                  },
                ),
                CustomTextFormFieldSignUp(
                  hinttext: AppStrings.emailAddress,
                  onChanged: (email) {
                    authsignupcubit.emailAddress = email;
                  },
                  onSubmitted: (email) {
                    authsignupcubit.emailAddress = email;
                  },
                ),
                CustomTextFormFieldSignUp(
                  hinttext: AppStrings.password,
                  onChanged: (password) {
                    authsignupcubit.password = password;
                  },
                  onSubmitted: (password) {
                    authsignupcubit.password = password;
                  },
                ),
                TermsAndCheckBox(),
                Gap(105),
                state is AuthSignupCubitLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : CustomBotton(
                        isgrey: authsignupcubit.termsAndConditions
                            ? false
                            : true,
                        buttonText: AppStrings.signUp,
                        ontap: () {
                          if (authsignupcubit.termsAndConditions == true) {
                            if (authsignupcubit.signupFormKey.currentState!
                                .validate()) {
                              authsignupcubit.signUpWithEmailAndPassword();
                            }
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
