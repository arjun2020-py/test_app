import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/custom_widget/custom_sized_box_widget.dart';
import '../../utils/custom_widget/custom_text_widget.dart';
import 'auth_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
//box-shadow: 0px 4px 4px 0px #00000040;
//box-shadow: 0px 4px 4px 0px #00000040;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color(00000040),
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 4)
            
            )],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffffffff),
                Color(0xfffefefe),
                Color(0xfffafafb),
                Color(0xfff2f2f5),
                Color(0xffe6e5ea),
                Color(0xffcdccd6),
                Color(0xffc6c5d1),
                Color(0xffb5b4c3),
                Color(0xffbcbbc9)
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              AnimatedContainer(
                  width: double.infinity,
                  height: 400,
                  duration: Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Color(0xff1b1645)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      SvgPicture.asset(
                        'assets/images/Group.svg',
                        width: 226,
                        height: 65,
                      ),
                      SizedBox(
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: CustomTextWidget(
                          text: 'Explore Syllabus >>',
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 100,
              ),
              CustomTextWidget(
                text: 'Discover Your \n Learning Here',
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(color: Color(0xff1B1645)),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                      InkWell(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AuthScreen(),
                        )),
                        child: CustomTextWidget(
                            text: 'Login', color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
