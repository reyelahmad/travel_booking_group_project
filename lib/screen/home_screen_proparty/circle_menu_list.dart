import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_booking_group_project/model/circle_menu_list_data.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/hotel_data_info.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class Circle_menu extends StatefulWidget {
  const Circle_menu({Key? key}) : super(key: key);

  @override
  _Circle_menuState createState() => _Circle_menuState();
}

class _Circle_menuState extends State<Circle_menu> {
  var selectedcirclemenu = 0;
  @override
  Widget build(BuildContext context) {

    var circlemenudata = CircleMenuDataDetailsScreen.getCircleMenuData();

    return SizedBox(
      height: 65.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: circlemenudata.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child:InkWell(
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
                          border:
                              Border.all(color: AppColors.myOfwhite, width: 2.r),
                          image: DecorationImage(
                              image: AssetImage('${circlemenudata[index].img}'),
                              fit: BoxFit.scaleDown)),
                      //child: Text("data"),
                    ),
                  ),
                ),
                MySmallText(
                    mytext: "${circlemenudata[index].name}",
                    myFontcolors: selectedcirclemenu == index
                        ? AppColors.myBlack
                        : AppColors.myBlack.withOpacity(0.5),
                    myFontwidth: null,
                    smallfontsize: 12)
                 ],
            );
          }),
    );
  }
}
