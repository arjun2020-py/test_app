import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.context) : super(AuthInitial());
  BuildContext context;

  bool isChecked = true;
  int screenCount = 0;
  isScreenChange() {
    screenCount++;
    if (screenCount > 3) {
      screenCount = 0;
      emit(AuthInitial());
    }
  }

  isCheckAuth() {
    isChecked = !isChecked;
    emit(AuthInitial());
  }
}
