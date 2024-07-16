import 'package:cources/core/utils/app_colors.dart';
import 'package:cources/features/onboarding/presentations/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: OnboardingViewBody(),
    );
  }
}