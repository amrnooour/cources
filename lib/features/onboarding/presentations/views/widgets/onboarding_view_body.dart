import 'package:cources/features/onboarding/presentations/views/widgets/first_container.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return const Stack(
      children: [
        FirstContainer(),
      ],
    );
  }
}
