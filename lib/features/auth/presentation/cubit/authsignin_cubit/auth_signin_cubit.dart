import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignin_cubit/auth_signin_cubit_state.dart';

class AuthSignInCubitCubit extends Cubit<AuthSignInCubitState> {
  AuthSignInCubitCubit() : super(AuthSignInCubitInitial());
  String? emailAddress;
  String? password;
  bool isPasswordVisible = true;
  GlobalKey<FormState> signinFormKey = GlobalKey();
  signInWithEmailAndPassword() async {
    try {
      emit(AuthSignInCubitLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(AuthSignInCubitSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          AuthSignInCubitFailureState(
            errorMessage: 'No user found for that email.',
          ),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          AuthSignInCubitFailureState(
            errorMessage: 'Wrong password provided for that user.',
          ),
        );
      } else if (e.code == 'The email address is badly formatted.') {
        emit(
          AuthSignInCubitFailureState(
            errorMessage: 'The email address is badly formatted.',
          ),
        );
      } else {
        emit(
          AuthSignInCubitFailureState(
            errorMessage: 'check your email and password',
          ),
        );
      }
    } catch (e) {
      emit(AuthSignInCubitFailureState(errorMessage: e.toString()));
    }
  }

  changePasswordVisibility(bool newValue) {
    isPasswordVisible = newValue;
    emit(AuthSignInCubitPasswordState());
  }
}
