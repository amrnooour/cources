import 'package:cources/features/home/presentation/views/widgets/custom_teacher_item.dart';
import 'package:flutter/widgets.dart';

class CustomGridTeacher extends StatelessWidget {
  const CustomGridTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height*.4,
      width: width,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         itemBuilder: (context, index) => const CustomTeacherItem(),),
    );
  }
}