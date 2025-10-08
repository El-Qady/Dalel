import 'package:flutter_application_1/features/auth/presentation/cubit/authsignin_cubit/auth_signin_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/cubit/authsignup_cubit/auth_signup_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/views/signin_view.dart';
import 'package:flutter_application_1/features/auth/presentation/views/signup_view.dart';
import 'package:flutter_application_1/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthSignUpCubit(),
        child: const SignupView(),
      ),
    ),
    GoRoute(
      path: '/signIn',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthSignInCubitCubit(),
        child: const SignInView(),
      ),
    ),
  ],
);
