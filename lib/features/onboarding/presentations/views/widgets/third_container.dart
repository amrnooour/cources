import 'package:flutter/material.dart';

class ThirdContainer extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  const ThirdContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        children: [
          const SizedBox(
            height: 95,
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}
