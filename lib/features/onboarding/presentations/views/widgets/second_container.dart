import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(15),
      topLeft: Radius.circular(15)),color: Colors.white),
      child: Row(
        children: [
          
        ],
      ),
    );
  }
}