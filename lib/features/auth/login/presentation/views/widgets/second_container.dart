import 'package:cources/core/functions/navigation.dart';
import 'package:cources/core/shared/custom_button.dart';
import 'package:cources/core/shared/custom_text_field.dart';
import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/auth/login/presentation/views/widgets/custom_row_login.dart';
import 'package:cources/features/auth/login/presentation/views/widgets/custom_row_not_have_acount.dart';
import 'package:flutter/material.dart';

class SecondContainerLogin extends StatelessWidget {
  final double height;
  final double width;
  const SecondContainerLogin(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          color: Colors.white),
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Sign in",style: TextStyle(fontSize: 24),),
            const SizedBox(height: 21,),
            const CustomTextField(
              hintText: "Mobile number",
              prefixIcon: Image(image: AssetImage(AppAssets.iconMessage)),
            ),
            const SizedBox(height: 19,),
            const CustomTextField(
              hintText: "your password",
              prefixIcon: Image(image: AssetImage(AppAssets.iconLock)),
              suffixIcon: Image(image: AssetImage(AppAssets.iconvisibilty)),
            ),
            const SizedBox(height: 20,),
            const CustomRowLogin(),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: CustomButton(text: "SIGN IN"),
            ),
            const SizedBox(height: 20,),
            CustomRowNotHaveAcount(
              onTap: (){
                customNavigation(context, "/register");
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
