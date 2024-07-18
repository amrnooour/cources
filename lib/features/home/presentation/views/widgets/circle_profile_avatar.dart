import 'package:flutter/material.dart';

class CircularProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final double progress;

 const CircularProfileAvatar({super.key, required this.imageUrl, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 3.0,
            ),
          ),
        ),
        ClipOval(
          child: Image.asset(
            imageUrl,
            width: 33,
            height: 33,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 42,
          height: 42,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 2.5,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}