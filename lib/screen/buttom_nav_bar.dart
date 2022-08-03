import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/screen/home_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectindex = 1;
  static List<Widget> _screen = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screen.elementAt(_selectindex),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: AppColors.myOfwhite,
        width: 340.w,
        unselectedItemColor: AppColors.myBlack,
        selectedItemColor: AppColors.myWhite,
        iconSize: 28.r,
        borderRadius: 15.r,
        itemBorderRadius: 15.r,
        selectedBackgroundColor: AppColors.myOrange,
        onTap: (int index) => setState(() {
          _selectindex = index;
        }),
        currentIndex: _selectindex,
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
          ),
          FloatingNavbarItem(
            icon: Icons.explore,
          ),
          FloatingNavbarItem(
            icon: Icons.chat_bubble_outline,
          ),
          FloatingNavbarItem(
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
