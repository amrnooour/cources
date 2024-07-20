import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomVideoItem extends StatelessWidget {
  final String imageUrl;
  final double progress;
  const CustomVideoItem(
      {super.key, required this.imageUrl, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 330,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    imageUrl,
                    width: 300,
                    height: 222,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 125,
                    top: 80,
                    child: Image.asset(AppAssets.playButton)),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: 300,
                    height: 7,
                    child: LinearProgressIndicator(
                      value: progress,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.blue),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Text(
                "3D Illustrations Course",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Text(
                "Create by Codebase Agency",
                style: TextStyle(fontSize: 8, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
