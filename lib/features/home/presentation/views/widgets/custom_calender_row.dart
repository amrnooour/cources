import 'package:cources/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomCalenderRow extends StatelessWidget {
  const CustomCalenderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.calenderIcon),
        const SizedBox(
          width: 11,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "End date",
              style: TextStyle(fontSize: 11, color: Color(0xff4318FF)),
            ),
            Text(
              "30 Oct 2022 , 02 :30 Pm",
              style: TextStyle(fontSize: 9, color: Color(0xffA3AED0)),
            )
          ],
        )
      ],
    );
  }
}
