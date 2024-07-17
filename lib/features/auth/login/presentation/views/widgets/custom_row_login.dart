import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRowLogin extends StatelessWidget {
  const CustomRowLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scaleX: .7,
          scaleY: .7,
          child: Switch(
              activeColor: Colors.white,
              activeTrackColor: AppColors.background,
              splashRadius: 10,
              value: true,
              onChanged: (value) {}),
        ),
        const Text("Remember Me",style: TextStyle(fontSize: 12),),
        const Spacer(),
        const Text("Forgot Password?",style: TextStyle(fontSize: 12),),
      ],
    );
  }
}
