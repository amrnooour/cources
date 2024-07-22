import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(AppAssets.newestImage)),
            Positioned(
              top: 25,
              left: 30,
              child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(AppAssets.playButton)),
            )
          ],
        ),
        const SizedBox(
          width: 9,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "3D Illustrations Course : Tutorial\n how to start from scratch "
                ,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
          Text("Mohamed Samir",style: TextStyle(fontSize: 11,color: Color(0xffA3AED0)),),
          Text(" 30 min",style: TextStyle(fontSize: 12,color: Color(0xff4318FF)),),
          Text(" remain",style: TextStyle(fontSize: 12,color: Color(0xffA3AED0)),),
        ],),
        SizedBox(
              height: 10,
            ),
          SizedBox(
            height: 7,
            width: 220,
            child: LinearProgressIndicator(
            value: .25,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            backgroundColor: Color(0xffEEF3FF)),
          )
          ],
        )
      ],
    );
  }
}
