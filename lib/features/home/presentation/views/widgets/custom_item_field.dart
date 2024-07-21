import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomItemField extends StatelessWidget {
  const CustomItemField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(AppAssets.fieldImage),
      const Text("Design")
    ],);
  }
}