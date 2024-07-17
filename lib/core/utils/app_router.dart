import 'package:cources/features/auth/login/presentation/views/login_view.dart';
import 'package:cources/features/auth/register/presentation/views/register_view.dart';
import 'package:cources/features/onboarding/presentations/views/onboarding_view.dart';
import 'package:cources/features/onboarding/presentations/views/second_onboarding_view.dart';
import 'package:cources/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const SplashView(),),
  GoRoute(path: "/onboarding",builder: (context, state) => const OnboardingView(),),
  GoRoute(path: "/onboardingTwo",builder: (context, state) => const SecondOnboardingView(),),
  GoRoute(path: "/login",builder: (context, state) => const LoginView(),),
  GoRoute(path: "/register",builder: (context, state) => const RegisterView(),),


]);
