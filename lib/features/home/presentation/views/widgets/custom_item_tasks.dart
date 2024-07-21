import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_calender_row.dart';
import 'package:flutter/material.dart';

class CustomItemTasks extends StatelessWidget {
  const CustomItemTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110,
          width: 120,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.tasksImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3D Illustrations Course : Anime\n Style Vector Illustration",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18,),
            CustomCalenderRow(),
          ],
        ),
      ],
    );
  }
}
