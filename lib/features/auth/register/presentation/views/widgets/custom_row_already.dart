import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRowAlready extends StatelessWidget {
  final void Function()? onTap;
  const CustomRowAlready({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account?"),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
            onTap: onTap,
            child: const Text(
              "Sign in",
              style: TextStyle(color: AppColors.background),
            ))
      ],
    );
  }
}
