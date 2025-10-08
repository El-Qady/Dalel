abstract class AuthSignUpCubitState {}

final class AuthSignupCubitInitial extends AuthSignUpCubitState {}

final class AuthSignupCubitLoadingState extends AuthSignUpCubitState {}

final class AuthSignupCubitSuccessState extends AuthSignUpCubitState {}

final class AuthSignupCubitUpdateTermsAndConditionsState
    extends AuthSignUpCubitState {}

final class AuthSignupCubitFailureState extends AuthSignUpCubitState {
  final String errorMessage;
  AuthSignupCubitFailureState({required this.errorMessage});
}
