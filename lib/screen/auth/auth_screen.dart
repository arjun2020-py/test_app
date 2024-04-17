import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/custom_widget/custom_sigin_option.dart';
import '../../utils/custom_widget/custom_sized_box_widget.dart';
import '../../utils/custom_widget/custom_text_widget.dart';
import '../../utils/custom_widget/custom_textfrom_widget.dart';
import '../main/bottomNav/bottom_navi.dart';
import 'cubit/auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
            Color(0xffededed),
            Color(0xffececec),
            Color(0xffebebeb),
            Color(0xffe9e9e9),
            Color(0xffdce5e9),
            Color(0xffcee2ed),
            Color(0xffbdddef),
            Color(0xffbbddf0),
            Color(0xffb8dcf0)
          ])),
      child: BlocProvider(
        create: (context) => AuthCubit(context),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            var cubit = context.read<AuthCubit>();
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: double.infinity,
                      height: cubit.isChecked ? 200 : 160,
                      decoration: const BoxDecoration(
                          boxShadow: [BoxShadow(color: Color(0xffe0e0e0))],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color(0xff1b1645)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Group.svg',
                            width: 226,
                            height: 65,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: cubit.isChecked ? 60 : 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: cubit.isChecked
                                ? 'Welcome Back'
                                : 'Create Account',
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Poppins',
                          ),
                          CustomTextWidget(
                            text: cubit.isChecked
                                ? 'Please enter the detail below to continue'
                                : 'Please enter the details below.',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                          )
                        ],
                      ),
                    ),
                    cubit.isChecked
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextformWidget(
                                hintText: 'User Name',
                              ),
                              CustomTextformWidget(
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.visibility_off)),
                                hintText: 'Passwrod',
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 280),
                                child: CustomTextWidget(
                                    text: 'Recovery Password ?',
                                    color: Colors.black,
                                    fontSize: 11),
                              )
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextformWidget(
                                hintText: 'User Name',
                              ),
                              CustomTextformWidget(
                                hintText: 'Full Name',
                              ),
                              CustomTextformWidget(
                                hintText: 'Email Address',
                              ),
                              CustomTextformWidget(
                                hintText: 'Passwrod',
                              ),
                              CustomTextformWidget(
                                hintText: 'Confrom Passwrod',
                              ),
                            ],
                          ),
                    verticalSizedBox(10),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ));
                        },
                        child: Text(
                          isCheck ? 'Login' : "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0E0D22)),
                      ),
                    ),
                    verticalSizedBox(15),
                    cubit.isChecked
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              horoztalSizedBox(10),
                              const Expanded(
                                child: Divider(
                                  thickness: 0.6,
                                  color: Colors.black,
                                ),
                              ),
                              horoztalSizedBox(10),
                              Expanded(
                                  child: CustomTextWidget(
                                      text: 'Or Continue With',
                                      color: Colors.black,
                                      fontSize: 15)),
                              horoztalSizedBox(10),
                              const Expanded(
                                child: Divider(
                                  thickness: 0.6,
                                  color: Colors.black,
                                ),
                              ),
                              horoztalSizedBox(10)
                            ],
                          )
                        : SizedBox(),
                    verticalSizedBox(10),
                    cubit.isChecked
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CustomSiginOption(
                                icons: FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                              horoztalSizedBox(20),
                              const CustomSiginOption(
                                icons: FontAwesomeIcons.apple,
                                color: Colors.black,
                              ),
                              horoztalSizedBox(20),
                              const CustomSiginOption(
                                icons: FontAwesomeIcons.facebook,
                                color: Color(0xff3b5998),
                              ),
                            ],
                          )
                        : SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextWidget(
                          text: isCheck
                              ? 'Not a member?'
                              : 'I have already an account?',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                        ),
                        TextButton(
                            onPressed: () {
                              print('----------------------------');
                              cubit.isCheckAuth();
                            },
                            child: CustomTextWidget(
                                text:
                                    cubit.isChecked ? 'Register Now' : 'Login',
                                color: Colors.blue,
                                fontSize: 11)),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
