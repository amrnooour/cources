import 'package:cources/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(children: [
        CustomAppbar()
      ],),
    );
  }
}