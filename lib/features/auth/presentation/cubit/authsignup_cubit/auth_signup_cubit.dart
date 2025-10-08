import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_signup_cubit_state.dart';

class AuthSignUpCubitCubit extends Cubit<AuthSignUpCubitState> {
  AuthSignUpCubitCubit() : super(AuthSignupCubitInitial());
}
