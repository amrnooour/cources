import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRowNotHaveAcount extends StatelessWidget {
  final void Function()? onTap;
  const CustomRowNotHaveAcount({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text("Don’t have an account?"),
      const SizedBox(width: 10,),
      GestureDetector(
        onTap: onTap,
        child: const Text("Sign up",style: TextStyle(color: AppColors.background),))
    ],);
  }
}