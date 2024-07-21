import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_video_item.dart';
import 'package:flutter/widgets.dart';

class CustomListVideo extends StatelessWidget {
  const CustomListVideo({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*.32,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => 
        const CustomVideoItem(imageUrl: AppAssets.testImage,
         progress: .25),),
    );
  }
}