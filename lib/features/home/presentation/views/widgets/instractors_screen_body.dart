// ignore_for_file: prefer_const_constructors

import 'package:cources/core/functions/navigation.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_arrow_back_row.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_teacher_item.dart';
import 'package:cources/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/widgets.dart';

class InstractorsScreenBody extends StatelessWidget {
  const InstractorsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomArrowBackRow(title: "  Instructors"),
              SizedBox(
                height: 20,
              ),
              SearchTextField(hint: "Search by instructor name"),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: height * .6,
                width: width,
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 9,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => CustomTeacherItem(
                    onTap: () {
                      customNavigation(context, "/teacherInfo");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
