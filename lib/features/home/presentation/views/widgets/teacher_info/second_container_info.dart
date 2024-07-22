import 'package:cources/features/home/presentation/views/widgets/custom_row_field.dart';
import 'package:cources/features/home/presentation/views/widgets/newest_item.dart';
import 'package:cources/features/home/presentation/views/widgets/teacher_info/subscribtion_row.dart';
import 'package:flutter/material.dart';

class SecondContainerInfo extends StatelessWidget {
  final double height;
  final double width;
  const SecondContainerInfo(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),color: Colors.white),
      height: height,
      width: width,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 29, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubscribtionRow(),
              SizedBox(height: 7,),
              Text("UX Researcher • 1200 EGP",style: TextStyle(color: Color(0xffA3AED0)),),
              SizedBox(height: 20,),
              Text("About Mohamed",style: TextStyle(fontSize: 18),),
              SizedBox(height: 10,),
              Text("Lorem Ipsum is simply dummy text of theprin-\nting and typesetting industry. Lorem Ipshas been\n the industry's standard dummy text ever since\n the 1500.",
              style: TextStyle(fontSize: 14,color: Color(0xff2B3674)),),
              SizedBox(height: 45,),
              CustomRowField(title: "Newest Courses"),
              SizedBox(height: 27,),
              NewestItem(),
              SizedBox(height: 27,),
              NewestItem(),
              SizedBox(height: 27,),
              NewestItem(),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
