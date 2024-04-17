import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/utils/custom_widget/custom_sized_box_widget.dart';

import '../../../../utils/custom_color.dart';
import '../../../../utils/custom_widget/custom_text_widget.dart';
import '../compoents/custom_button.dart';
import '../cubit/home_cubit.dart';
import '../model/post_model.dart';

class ScreenHome extends StatelessWidget {
   ScreenHome({super.key});
   
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = context.read<HomeCubit>();
          return Scaffold(
              backgroundColor: appSecondryColor,
              appBar: AppBar(
                elevation: 0.5,
                shadowColor: Color(0xffd2deed),
                automaticallyImplyLeading: false,
                backgroundColor: appSecondryColor,
                title: Text(
                  'Public sense',
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Font1'),
                ),
              ),
              body: ListView.builder(
                itemCount: cubit.postList.length,
                itemBuilder: (context, index) {
                  var data = cubit.postList[index];
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(data.profilePic),
                            ),
                            horoztalSizedBox(10),
                            CustomTextWidget(
                              text: data.name,
                              color: Color(0xff0F0C0C),
                              fontSize: 14,
                              fontFamily: 'Font2',
                            ),
                            horoztalSizedBox(4),
                  Image.asset('assets/images/blue.png'),
                            Spacer(),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert))
                          ],
                        ),
                        Image.asset(
                          fit: BoxFit.cover,
                          data.postPic,
                          width: double.infinity,
                        ),
                        Row(
                          children: [
                            CustomButtonClick(
                              onPressed: () {},
                              icons: Icons.favorite_border,
                            ),
                            Image.asset('assets/images/Speech.png'),
                            horoztalSizedBox(10),
                            Image.asset('assets/images/Direct.png'),
                            Spacer(),
                            Image.asset('assets/images/uil.png'),
                            verticalSizedBox(10),
                          ],
                        ),
                        Row(
                          children: [
                            horoztalSizedBox(15),
                            CustomTextWidget(
                              text: data.likeCount,
                              color: blackColor,
                              fontSize: 10,
                              fontFamily: 'Font2',
                            ),
                            CustomTextWidget(
                              text: 'likes',
                              color: blackColor,
                              fontSize: 10,
                              fontFamily: 'Font2',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            horoztalSizedBox(15),
                            CustomTextWidget(
                              text: 'view all ${data.commentsCount} comments',
                              color: Color(0xff707070),
                              fontSize: 8,
                              fontFamily: 'Font2',
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ));
        },
      ),
    );
  }
}
