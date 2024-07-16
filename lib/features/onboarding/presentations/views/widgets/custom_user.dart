import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomUser extends StatelessWidget {
  final String image;
  final String type;
  final bool isSelected;
  const CustomUser(
      {super.key,
      required this.image,
      required this.type,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: isSelected ? AppColors.background : Colors.white,
              borderRadius: BorderRadius.circular(50)),
          child: Image.asset(image),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          type,
          style: TextStyle(
              color: isSelected ? AppColors.studentText: Colors.grey, fontSize: 13,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
