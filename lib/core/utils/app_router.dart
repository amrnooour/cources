import 'package:cources/features/onboarding/presentations/views/onboarding_view.dart';
import 'package:cources/features/onboarding/presentations/views/second_onboarding_view.dart';
import 'package:cources/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const SplashView(),),
  GoRoute(path: "/onboarding",builder: (context, state) => const OnboardingView(),),
  GoRoute(path: "/onboardingTwo",builder: (context, state) => const SecondOnboardingView(),),

]);
