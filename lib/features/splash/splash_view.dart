import 'package:cources/core/functions/navigation.dart';
import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      customNavigation(context, "/onboarding");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.splash,fit: BoxFit.cover,);
  }
}
