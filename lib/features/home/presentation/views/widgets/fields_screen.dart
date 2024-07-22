import 'package:cources/features/home/presentation/views/widgets/field_screen_body.dart';
import 'package:flutter/material.dart';

class FieldsScreen extends StatelessWidget {
  const FieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF4F7FE),
      body: FieldScreenBody(),
    );
  }
}