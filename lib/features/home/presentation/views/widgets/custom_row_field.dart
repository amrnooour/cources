// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomRowField extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomRowField({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 17),
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              "See All",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff4318FF),
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
