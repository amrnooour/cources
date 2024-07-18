import 'package:cources/features/blog/presentation/views/widgets/blog_view_body.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BlogViewBody(),
    );
  }
}