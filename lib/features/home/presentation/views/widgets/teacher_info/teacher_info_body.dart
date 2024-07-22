import 'package:cources/features/home/presentation/views/widgets/teacher_info/first_container_info.dart';
import 'package:cources/features/home/presentation/views/widgets/teacher_info/second_container_info.dart';
import 'package:flutter/widgets.dart';

class TeacherInfoBody extends StatelessWidget {
  const TeacherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(top: 0, child: FirstContainerInfo(
          height: height*.35,
          width: width,
        )),
        Positioned(bottom: 0, child: SecondContainerInfo(
          height: height*.7,
          width: width,
        )),
      ],
    );
  }
}
