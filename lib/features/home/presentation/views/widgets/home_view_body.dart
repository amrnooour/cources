import 'package:cources/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_item_tasks.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_list_field.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_list_video.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_row_field.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
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
              CustomRowField(title: "Field",),
              SizedBox(
                height: 27,
              ),
              CustomListField(),
              SizedBox(
                height: 45,
              ),
              CustomRowField(title: "Tasks and exams"),
              SizedBox(
                height: 45,
              ),
              CustomItemTasks(),
              SizedBox(height: 15,),
              CustomItemTasks()

            ],
          ),
        ),
      ),
    );
  }
}
