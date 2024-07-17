import 'package:cources/features/auth/register/presentation/views/widgets/first_container_register.dart';
import 'package:cources/features/auth/register/presentation/views/widgets/second_container_register.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
            top: 0,
            child: FirstContainerRegister(
                onTap: () {
                  Navigator.pop(context);
                },
                height: height * .4,
                width: width)),
        Positioned(
            bottom: 0,
            child: SecondContainerRegister(height: height * .7, width: width)),
      ],
    );
  }
}
