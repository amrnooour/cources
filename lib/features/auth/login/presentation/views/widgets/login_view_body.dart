import 'package:cources/features/auth/login/presentation/views/widgets/first_container.dart';
import 'package:cources/features/auth/login/presentation/views/widgets/second_container.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Positioned(
        top: 0,
        child: FirstContainerLogin(height: height*.5, width: width)),
      Positioned(
        bottom: 0,
        child: SecondContainerLogin(height: height*.6, width: width))
    ],);
  }
}