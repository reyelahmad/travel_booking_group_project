import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/container_menu_list.dart';
import 'package:travel_booking_group_project/screen/home_screen_proparty/containerrowlist.dart';
import 'package:travel_booking_group_project/screen/home_screen_proparty/hotel_list.dart';
import 'package:travel_booking_group_project/screen/home_screen_proparty/listrowlist.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class HomeScreen extends StatefulWidget {



  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      //backgroundColor: Colors.blue.withOpacity(0.05),
      body: SafeArea(
        
        child: Container(
          margin: EdgeInsets.all(6.r),
          height: double.infinity,
          width: double.infinity,
          color: AppColors.myWhite.withOpacity(0.5),
          //color: Colors.black.withOpacity(0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //this is for app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: -2,
                                blurRadius: 7,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 2.w, color: AppColors.myOrange),
                            image: DecorationImage(
                                image: AssetImage(
                                  ('assetes/images/icons/avator.png'),
                                ),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style:
                                TextStyle(fontSize: 18.sp, fontFamily: 'firaR'),
                          ),
                          Text(
                            "Ronald Richards",
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'fira'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40.h,
                    width: 40.w,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assetes/images/icons/bell.svg',
                        fit: BoxFit.fill,
                        color: AppColors.myWhite,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.myOrange.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              //this is for search bar
              Container(
                height: 45.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.myWhite,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: -4, blurRadius: 4, offset: Offset(0, -1))
                  ],
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.search,
                            size: 30.r,
                            color: AppColors.myOrange,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        MySmallText(
                            mytext: "Discover a city",
                            myFontcolors: AppColors.myBlack.withOpacity(0.5),
                            myFontwidth: FontWeight.w100,
                            smallfontsize: 16)
                      ],
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          'assetes/images/icons/setting.svg',
                          fit: BoxFit.fill,
                          color: AppColors.myBlack.withOpacity(0.6),
                        ),
                      ),
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //this is container row list and its create on another page which is in the home screen property
              ContainerRowList(),
              SizedBox(height: 15.h,),
              MyBigText(mybigtext: "Explore Cities", myBigFontcolors: AppColors.myBlack, myBigFontwidth: FontWeight.bold, bigfontsize: 20),
              SizedBox(height: 7.h,),
              //List Row Add here
              ListRowList(),
              SizedBox(height: 10.h,),
              //hotel list view and all data will load here
              HotelList(),
              SizedBox(height: 12.h,),
              MyBigText(mybigtext: "Popular Categories", myBigFontcolors: AppColors.myBlack, myBigFontwidth: FontWeight.bold, bigfontsize: 20),
              SizedBox(height: 12.h,),

            ],
          ),
        ),
      ),
    );
  }
}
//Text(rowmenulist[index].name),