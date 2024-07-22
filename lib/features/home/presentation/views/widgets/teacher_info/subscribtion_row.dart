import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SubscribtionRow extends StatelessWidget {
  const SubscribtionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text("Mohamed Samir",style: TextStyle(fontSize: 25),),
      const Spacer(),
      Container(
        height: 28,
        width: 110,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: const Color(0xff4318FF)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(children: [
            const Text("Subscribe ",style: TextStyle(color: Colors.white),),
            Image.asset(AppAssets.subIcon),
          ],),
        ),
      )
    ],);
  }
}