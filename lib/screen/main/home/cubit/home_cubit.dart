import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../model/post_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.context) : super(HomeInitial());
  BuildContext context;
  bool isBlueTikes = true;
  PostModel? postModel;
  BlueTikeCheck() {
    isBlueTikes = !isBlueTikes;
  }

  List<PostModel> postList = [
    PostModel(
        profilePic: 'assets/images/por.png',
        name: 'anne_hathaway',
        postPic: 'assets/images/Frame1.jpg',
        likeCount: '50,306',
        commentsCount: '456',
        isBlueTike: false),
    PostModel(
        profilePic: 'assets/images/bmw.png',
        name: 'bmw',
        postPic: 'assets/images/Frame2.png',
        likeCount: '1,63,306',
        commentsCount: '655',
        isBlueTike: true),
    PostModel(
        profilePic: 'assets/images/tour.png',
        name: 'terrorism',
        postPic: 'assets/images/Frame 3.png',
        likeCount: '1,63,306',
        commentsCount: '350',
        isBlueTike: false),
    PostModel(
        profilePic: 'assets/images/bmw.png',
        name: 'bmw',
        postPic: 'assets/images/Frame2.png',
        likeCount: '1,63,306',
        commentsCount: '655',
        isBlueTike: true),
  ];
}
