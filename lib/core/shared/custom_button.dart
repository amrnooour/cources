import 'package:cources/core/utils/app_colors.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.background),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(""),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))
                ,color: Color(0xff3D56F0)),
                child: const Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
