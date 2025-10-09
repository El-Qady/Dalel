abstract class AuthSignInCubitState {}

final class AuthSignInCubitInitial extends AuthSignInCubitState {}

final class AuthSignInCubitLoadingState extends AuthSignInCubitState {}

final class AuthSignInCubitSuccessState extends AuthSignInCubitState {}


final class AuthSignInCubitPasswordState extends AuthSignInCubitState {}

final class AuthSignInCubitFailureState extends AuthSignInCubitState {
  final String errorMessage;
  AuthSignInCubitFailureState({required this.errorMessage});
}
