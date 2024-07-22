import 'package:cources/features/home/presentation/views/widgets/instractors_screen_body.dart';
import 'package:flutter/material.dart';

class InstractorsScreen extends StatelessWidget {
  const InstractorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF4F7FE),
      body: InstractorsScreenBody(),
    );
  }
}
