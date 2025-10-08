import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_signin_cubit_state.dart';

class AuthSignInCubitCubit extends Cubit<AuthSignInCubitState> {
  AuthSignInCubitCubit() : super(AuthSignInCubitInitial());
}
