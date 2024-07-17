import 'package:cources/core/functions/navigation.dart';
import 'package:cources/core/shared/custom_button.dart';
import 'package:cources/core/shared/custom_text_field.dart';
import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/auth/register/presentation/views/widgets/custom_row_already.dart';
import 'package:flutter/material.dart';

class SecondContainerRegister extends StatelessWidget {
  final double height;
  final double width;
  const SecondContainerRegister(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign up",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 21,
            ),
            const CustomTextField(
              hintText: "full name",
              prefixIcon: Image(image: AssetImage(AppAssets.iconProfile)),
            ),
            const SizedBox(
              height: 19,
            ),
            const CustomTextField(
              hintText: "Mobile number",
              prefixIcon: Image(image: AssetImage(AppAssets.iconLock)),
            ),
            const SizedBox(
              height: 19,
            ),
            const CustomTextField(
              hintText: "Your password",
              prefixIcon: Image(image: AssetImage(AppAssets.iconLock)),
              suffixIcon: Image(image: AssetImage(AppAssets.iconvisibilty)),
            ),
            const SizedBox(
              height: 19,
            ),
            const CustomTextField(
              hintText: "Confirm password",
              prefixIcon: Image(image: AssetImage(AppAssets.iconLock)),
              suffixIcon: Image(image: AssetImage(AppAssets.iconvisibilty)),
            ),
            const SizedBox(
              height: 38,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: CustomButton(text: "SIGN UP"),
            ),
            const SizedBox(
              height: 23,
            ),
            CustomRowAlready(
              onTap: () {
                customNavigation(context, "/login");
              },
            ),
          ],
        ),
      ),
    );
  }
}
