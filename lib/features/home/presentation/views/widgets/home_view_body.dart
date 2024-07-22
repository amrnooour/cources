// ignore_for_file: prefer_const_constructors

import 'package:cources/core/functions/navigation.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_grid_teacher.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_item_tasks.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_list_field.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_list_video.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_row_field.dart';
import 'package:cources/features/home/presentation/views/widgets/newest_item.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 34, top: 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(),
              SizedBox(
                height: 20,
              ),
              CustomListVideo(),
              SizedBox(
                height: 27,
              ),
              CustomRowField(
                title: "Field",
                onTap: () {
                  customNavigation(context, "/fields");
                },
              ),
              SizedBox(
                height: 27,
              ),
              CustomListField(),
              SizedBox(
                height: 45,
              ),
              CustomRowField(title: "Tasks and exams"),
              SizedBox(
                height: 27,
              ),
              CustomItemTasks(),
              SizedBox(
                height: 15,
              ),
              CustomItemTasks(),
              SizedBox(
                height: 45,
              ),
              CustomRowField(
                title: "Highlighted teachers",
                onTap: () {
                  customNavigation(context, "/instractors");
                },
              ),
              SizedBox(
                height: 27,
              ),
              CustomGridTeacher(),
              SizedBox(
                height: 45,
              ),
              CustomRowField(
                title: "Newest classes",
              ),
              SizedBox(
                height: 27,
              ),
              NewestItem(),
              SizedBox(
                height: 20,
              ),
              NewestItem(),
            ],
          ),
        ),
      ),
    );
  }
}
