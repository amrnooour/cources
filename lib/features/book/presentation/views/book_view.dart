import 'package:cources/features/book/presentation/views/widgets/book_view_body.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookViewBody(),
    );
  }
}