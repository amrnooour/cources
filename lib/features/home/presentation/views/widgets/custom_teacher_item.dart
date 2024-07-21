import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_container_price.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_number_cources.dart';
import 'package:flutter/widgets.dart';

class CustomTeacherItem extends StatelessWidget {
  const CustomTeacherItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 116,
          width: 150,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  image: AssetImage(AppAssets.teacherImage),
                  fit: BoxFit.cover)),
           child: const Padding(
             padding: EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CustomNumberCources(),
             ],),
           ),
        ),
        const SizedBox(height: 13,),
        const Row(children: [
          Text("Mohamed samir  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          CustomContainerPrice(),
        ],),
        const Text("UX Researcher",style: TextStyle(fontSize: 14,color: Color(0xffA3AED0)),)
      ],
    );
  }
}
