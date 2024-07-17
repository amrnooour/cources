import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FirstContainerRegister extends StatelessWidget {
  final double height;
  final double width;
  final void Function()? onTap;
  const FirstContainerRegister(
      {super.key, required this.height, required this.width, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              GestureDetector(
                onTap: onTap,
                child: const Icon(Icons.arrow_back,color: Colors.white,)),
            ],),
            Image.asset(AppAssets.authLogo),
          ],
        ),
      ),
    );
  }
}
