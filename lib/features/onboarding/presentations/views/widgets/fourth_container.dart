import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FourthContainer extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final PageController controller;
  final void Function()? onTapNext;
  const FourthContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.title, required this.controller,this.onTapNext});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            color: AppColors.background),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Image.asset(title),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Skip",style: TextStyle(color: Colors.grey),),
                  SmoothPageIndicator(
                    effect:  WormEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.grey.withOpacity(.5),
                      dotHeight: 7,
                      dotWidth: 7
                    ),
                    controller: controller, count: 3),
                 GestureDetector(
                  onTap: onTapNext,
                  child: const Text("Next",style: TextStyle(color: Colors.white),))
                ],
              ),
            )
          ],
        ));
  }
}
