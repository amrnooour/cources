import 'package:flutter/material.dart';

class CustomUser extends StatelessWidget {
  final Color? color;
  const CustomUser({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(50)),
        )
      ],
    );
  }
}