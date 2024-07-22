// ignore_for_file: prefer_const_constructors

import 'package:cources/features/home/presentation/views/widgets/custom_arrow_back_row.dart';
import 'package:cources/features/home/presentation/views/widgets/custom_item_field.dart';
import 'package:cources/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class FieldScreenBody extends StatelessWidget {
  const FieldScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            CustomArrowBackRow(title: "  Fields"),
            const SizedBox(
              height: 20,
            ),
            const SearchTextField(hint: "Search by field name",),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: height * .5,
              width: width,
              child: GridView.builder(
                itemCount: 16,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 9,
                    crossAxisCount: 4),
                itemBuilder: (context, index) => const CustomItemField(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
