import 'package:cources/core/functions/navigation.dart';
import 'package:cources/features/onboarding/data/models/onboarding_model.dart';
import 'package:cources/features/onboarding/presentations/views/widgets/fourth_container.dart';
import 'package:cources/features/onboarding/presentations/views/widgets/third_container.dart';
import 'package:flutter/material.dart';

class SecondOnboardingViewBody extends StatelessWidget {
  const SecondOnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final int totalPages = onboardingItem.length;
    return PageView.builder(
      controller: controller,
      itemCount: totalPages,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Positioned(
              top: 0,
              child: ThirdContainer(
                  height: height * .7,
                  width: width,
                  image: onboardingItem[index].image),
            ),
            Positioned(
              bottom: 0,
              child: FourthContainer(
                  onTapNext: () {
                    int nextPage = controller.page!.toInt() + 1;
                    if (nextPage < totalPages) {
                      controller.animateToPage(
                        nextPage,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else if (nextPage == totalPages) {
                      customNavigation(context, "/login");
                    }
                  },
                  onTapSkip: (){
                    customNavigation(context, "/login");
                  },
                  height: height * .37,
                  width: width,
                  title: onboardingItem[index].title,
                  controller: controller),
            )
          ],
        );
      },
    );
  }
}
