import 'package:cources/features/home/presentation/views/widgets/custom_item_field.dart';
import 'package:flutter/material.dart';

class CustomListField extends StatelessWidget {
  const CustomListField({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*.1,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 9),
          child: CustomItemField(),
        ),),
    );
  }
}