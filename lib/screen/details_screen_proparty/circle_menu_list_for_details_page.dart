import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_booking_group_project/model/circle_menu_details_page_list_data.dart';

import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/hotel_data_info.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';


class Circle_menu_For_Details_Screen extends StatefulWidget {
  const Circle_menu_For_Details_Screen({Key? key}) : super(key: key);

  @override
  _Circle_menu_For_Details_ScreenState createState() => _Circle_menu_For_Details_ScreenState();
}

class _Circle_menu_For_Details_ScreenState extends State<Circle_menu_For_Details_Screen> {
  var selectedcirclemenu = 0;
  @override
  Widget build(BuildContext context) {
    var circlemenudata2 = CircleMenuDataDetailsScreen.getCircleMenuData();

    return SizedBox(
      height: 70.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: circlemenudata2.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedcirclemenu = index;
                      });
                    },
                    child: Container(
                      // margin: EdgeInsets.only(
                      //     left: 0.w, right: 20.w, top: 2.h, bottom: 2.h),
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: AppColors.myWhite,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.myOfwhite, width: 2.r),
                          image: DecorationImage(
                              image: AssetImage('${circlemenudata2[index].img}'),
                              fit: BoxFit.scaleDown)),
                      //child: Text("data"),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                MySmallText(
                    mytext: "${circlemenudata2[index].name}",
                    myFontcolors: selectedcirclemenu == index
                        ? AppColors.myBlack
                        : AppColors.myBlack.withOpacity(0.5),
                    myFontwidth: null,
                    smallfontsize: 14)
              ],
            );
          }),
    );
  }
}
