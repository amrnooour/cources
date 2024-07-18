import 'package:cources/features/questions/presentation/views/widgets/question_view_body.dart';
import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuestionViewBody(),
    );
  }
}