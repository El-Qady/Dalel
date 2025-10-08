import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit_state.dart';
import 'package:fluttertoast/fluttertoast.dart';

void flutterToastError(AuthSignupCubitFailureState state) {
  Fluttertoast.showToast(
    msg: state.errorMessage,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
