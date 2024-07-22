import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class FirstContainerInfo extends StatelessWidget {
  final double height;
  final double width;
  const FirstContainerInfo(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Image.asset(
            height: height,
            width: width,
            AppAssets.imageContainer,
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 50,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ))
        ],
      ),
    );
  }
}
