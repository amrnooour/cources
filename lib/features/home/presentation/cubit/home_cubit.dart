import 'package:cources/features/home/presentation/cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());

  int currentIndex = 0;

  changeCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    emit(HomeBottomNavigation());
  }
}
