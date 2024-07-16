import 'package:cources/features/onboarding/presentations/views/widgets/first_container.dart';
import 'package:cources/features/onboarding/presentations/views/widgets/second_container.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: FirstContainer(
            height: height*.7,
            width: width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: SecondContainer(
            height: height*.35,
            width: width,
          ))
      ],
    );
  }
}
