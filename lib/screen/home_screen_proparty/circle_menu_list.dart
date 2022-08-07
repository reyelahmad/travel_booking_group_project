import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_booking_group_project/model/circle_menu_list_data.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class Circle_menu extends StatefulWidget {

  final selectedcirclemenu=0;

  const Circle_menu({Key? key}) : super(key: key);

  @override
  _Circle_menuState createState() => _Circle_menuState();
}

class _Circle_menuState extends State<Circle_menu> {
  @override
  Widget build(BuildContext context) {
    var circlemenudata=CircleMenuData.getCircleMenuData();
    return SizedBox(
      height: 65.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: circlemenudata.length,
          itemBuilder: (context, index) {
            return
                Container(
                  margin: EdgeInsets.only(
                      left: 0.w, right: 30.w, top: 2.h, bottom: 2.h),
                  width: 65.w,
                  decoration: BoxDecoration(
                      color: AppColors.myOrange,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.myBlack, width: 2.r),
                      image: DecorationImage(
                          image: AssetImage('${circlemenudata[index].img}'),
                          fit: BoxFit.cover)),

                );

          }),
    );
  }
}
