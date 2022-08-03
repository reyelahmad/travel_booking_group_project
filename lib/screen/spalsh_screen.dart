import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/screen/buttom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // this container for background image and hole screen
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assetes/images/background/bg.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),

            // this column for screen text and swipe option
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //this column for top text
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore Beauty \nOf Journey",
                      style: TextStyle(
                          fontSize: 50.sp,
                          color: AppColors.myBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'fira'),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Everything you can imagine, is here",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: AppColors.myBlack,
                          // fontWeight: FontWeight.w200,
                          fontFamily: 'firaR'),
                    ),
                  ],
                ),
                // for swipe and other bottom text
                Column(
                  children: [
                    Builder(builder: (context) {
                      return SlideAction(
                        text: "Swipe to Explore Now",
                        textStyle: TextStyle(
                            fontSize: 16.sp,

                            color: AppColors.myOfwhite.withOpacity(0.9),
                            // fontWeight: FontWeight.w200,
                            fontFamily: 'firaR'),
                        alignment: Alignment.bottomCenter,
                        innerColor: Colors.black,
                        outerColor: Colors.black.withOpacity(0.2),
                        height: 75.h,
                        sliderButtonIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 25.r,
                          color: Colors.white,
                        ),
                        sliderButtonYOffset: 5.r,
                        borderRadius: 15.r,
                        submittedIcon: Icon(
                          Icons.done,
                          size: 40.r,
                          color: Colors.white,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        onSubmit: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyBottomNavBar()));
                        },
                      );
                    }),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.myWhite,
                          // fontWeight: FontWeight.w200,
                          fontFamily: 'firaR'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
