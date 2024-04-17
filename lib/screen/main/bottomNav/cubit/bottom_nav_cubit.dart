import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../home/view/screen_home.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit(this.context) : super(BottomNavInitial());
  BuildContext context;
  int currentIndex = 0;
  List<Widget> screens = [
    Center(child: ScreenHome()),
    Text('Search'),
    Text('message'),
    Text('Cart'),
    Text('profile')
  ];
  onChangeTab(int index) {
    currentIndex = index;
    emit(BottomNavInitial());
  }
}
