import 'package:cources/core/functions/navigation.dart';
import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/onboarding/presentations/views/widgets/custom_user.dart';
import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  final double height;
  final double width;
  const SecondContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 81),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomUser(image: AppAssets.man, type: "Parent"),
            const SizedBox(
              width: 50,
            ),
            GestureDetector(
              onTap: () {
                customNavigation(context, "/onboardingTwo");
              },
              child: const CustomUser(
                image: AppAssets.women,
                type: "Student",
                isSelected: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
