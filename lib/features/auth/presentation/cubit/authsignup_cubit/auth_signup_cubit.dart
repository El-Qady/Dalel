import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit_state.dart';

class AuthSignUpCubit extends Cubit<AuthSignUpCubitState> {
  AuthSignUpCubit() : super(AuthSignupCubitInitial());
  String? emailAddress;
  String? password;
  String? fristName;
  String? lastName;
  bool termsAndConditions = false;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  signUpWithEmailAndPassword() async {
    try {
      emit(AuthSignupCubitLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(AuthSignupCubitSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          AuthSignupCubitFailureState(
            errorMessage: 'The password provided is too weak.',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          AuthSignupCubitFailureState(
            errorMessage: 'The account already exists for that email.',
          ),
        );
      } else if (e.code == 'invalid-email') {
        emit(
          AuthSignupCubitFailureState(
            errorMessage: 'The email address is not valid.',
          ),
        );
      } else {
        emit(AuthSignupCubitFailureState(errorMessage: e.message.toString()));
      }
    } catch (e) {
      emit(AuthSignupCubitFailureState(errorMessage: e.toString()));
    }
  }

  updateTermsAndConditions(bool newValue) {
    termsAndConditions = newValue;
    emit(AuthSignupCubitUpdateTermsAndConditionsState());
  }
}
