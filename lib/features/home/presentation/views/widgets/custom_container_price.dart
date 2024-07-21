import 'package:flutter/material.dart';
class CustomContainerPrice extends StatelessWidget {
  const CustomContainerPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 38,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color: const Color(0xff4318FF)),
      child: const Center(child: Text("1200 Egp",style: TextStyle(fontSize: 5,color: Colors.white),),),
    );
  }
}