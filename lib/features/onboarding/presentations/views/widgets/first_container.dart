import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 50,),
      Image.asset(AppAssets.logo),
      const SizedBox(height: 30,),
      Image.asset(AppAssets.textSelectUser),
    ],);
  }
}