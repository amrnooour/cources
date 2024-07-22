import 'package:flutter/material.dart';

class CustomArrowBackRow extends StatelessWidget {
  final String title;
  const CustomArrowBackRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
