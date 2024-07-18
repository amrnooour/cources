import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/home/presentation/views/widgets/circle_profile_avatar.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 12),
      child: Row(children: [
        const Center(child: CircularProfileAvatar(
          imageUrl: AppAssets.profilePhoto,
           progress: .25),),
        const SizedBox(width: 11,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Good Evening!",style: TextStyle(fontSize: 13,color: Color(0xffA3AED0)),),
          SizedBox(height: 3,),
          Text("Codebasetech",style: TextStyle(fontSize: 20,color: Color(0xff000B23))),
        ],),
        const Spacer(),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: const Color(0xffF4F7FE)),
          height: 42,
          width: 42,
          child: Center(child: Image.asset(AppAssets.bell),),),
      ],),
    );
  }
}