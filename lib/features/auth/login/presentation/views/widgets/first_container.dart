import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FirstContainerLogin extends StatelessWidget {
  final double height;
  final double width;
  const FirstContainerLogin({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: height,
      width: width,
      child: Center(child: Image.asset(AppAssets.authLogo),),
    );
  }
}