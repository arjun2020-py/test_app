import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/bottom_nav_cubit.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(context),
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          var cubit = context.read<BottomNavCubit>();
          return Scaffold(
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: CupertinoTabBar(
                      activeColor: Colors.white,
                      onTap: (index) =>
                          context.read<BottomNavCubit>().onChangeTab(index),
                      currentIndex: cubit.currentIndex,
                      backgroundColor: Colors.black,
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search), label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.message), label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_basket), label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person), label: '')
                      ],

                      // elevation: 8,
                      height: 55,
                    )

                    //  BottomNavigationBar(
                    //   backgroundColor: const Color(0xff2B2B2B),
                    //   currentIndex: cubit.currentIndex,
                    //   onTap: (value) =>
                    //       context.read<BottomNavCubit>().onChangeTab(value),
                    //   selectedItemColor: Colors.black,
                    //   unselectedItemColor: Colors.grey,
                    //   showSelectedLabels: false,
                    //   showUnselectedLabels: false,
                    //   items: const [
                    //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                    //     BottomNavigationBarItem(
                    //         icon: Icon(Icons.search), label: 'search'),
                    //     BottomNavigationBarItem(
                    //         icon: Icon(Icons.message), label: 'message'),
                    //     BottomNavigationBarItem(
                    //         icon: Icon(Icons.shopping_basket), label: 'cart'),
                    //     BottomNavigationBarItem(
                    //         icon: Icon(Icons.person), label: 'profile')
                    //   ],
                    // ),
                    ),
              ));
        },
      ),
    );
  }
}
