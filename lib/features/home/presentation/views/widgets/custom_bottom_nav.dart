import 'package:cources/core/utils/app_assets.dart';
import 'package:cources/features/home/presentation/cubit/home_cubit.dart';
import 'package:cources/features/home/presentation/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return BottomNavigationBar(
            currentIndex: context.read<HomeCubit>().currentIndex,
            onTap: (index) {
              context.read<HomeCubit>().changeCurrentIndex(index);
            },
            items: [
              buildBottomNavItem(
                   Image.asset(AppAssets.homeIconSelected),
                   Image.asset(AppAssets.homeIcom),
                   context.read<HomeCubit>().currentIndex == 0),
              buildBottomNavItem(
                   Image.asset(AppAssets.tab2Selected),
                   Image.asset(AppAssets.tab2),
                  context.read<HomeCubit>().currentIndex == 1),
              buildBottomNavItem(
                  Image.asset(AppAssets.tab3),
                  Image.asset(AppAssets.tab3),
                  context.read<HomeCubit>().currentIndex == 2),
              buildBottomNavItem(
                   Image.asset(AppAssets.tab4Selected),
                   Image.asset(AppAssets.tab4),
                  context.read<HomeCubit>().currentIndex == 3),
              buildBottomNavItem(
                   Image.asset(AppAssets.tab5),
                   Image.asset(AppAssets.tab5),
                  context.read<HomeCubit>().currentIndex == 4),
            ]);
      },
    );
  }

  buildBottomNavItem(Widget iconActive,Widget icon, bool isSelected) {
    return BottomNavigationBarItem(
        label: "",
        icon: isSelected ? iconActive : icon);
  }
}