import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  final double height;
  final double width;
  const FirstContainer({super.key,required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.logo),
            const SizedBox(
              height: 60,
            ),
            Image.asset(AppAssets.textSelectUser),
          ],
        ),
      ),
    );
  }
}
