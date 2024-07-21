import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomNumberCources extends StatelessWidget {
  const CustomNumberCources({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 64,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color: Colors.grey),
      child:  Row(children: [
        const Text("     4 cources ",style: TextStyle(fontSize: 7,color: Colors.white),),
        Image.asset(AppAssets.bookIcon),
      ],),
    );
  }
}