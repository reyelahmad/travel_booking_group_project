import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/hotel_data_info.dart';

import 'package:travel_booking_group_project/screen/details_screen.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

import '../../model/hotel_data_info.dart';

class HotelList extends StatefulWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  State<HotelList> createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  @override
  Widget build(BuildContext context) {
   // var hoteldata = TravelData.myHotelListData;
    return SizedBox(
        height: 190.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: myHotelListData.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(
                    model: myHotelListData[index],
                  )));
                });},
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 8, top: 8, bottom: 8),
                  width: 200.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 1,
                          color: AppColors.myWhite,
                        )
                      ],
                      //color: AppColors.myWhite.withOpacity(0.5),
                      color: Colors.black.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Column(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //hotel image will add here
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 125.h,
                              width: 180.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assetes/images/background/bg.png'),
                                      fit: BoxFit.cover),
                                  color: AppColors.myWhite,
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                          ),
                          Positioned(
                              right: 6.w,
                              top: 12.h,
                              child: CircleAvatar(
                                radius: 15.r,
                                backgroundColor:
                                    AppColors.myOrange.withOpacity(0.9),
                                child: Icon(
                                  Icons.favorite_outline,
                                  size: 20.r,
                                  color: AppColors.myWhite,
                                ),
                              ))
                        ],
                      ),
                      //text and others info will add here
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyBigText(
                                    mybigtext: myHotelListData[index].name,
                                    myBigFontcolors: AppColors.myBlack,
                                    myBigFontwidth: FontWeight.w800,
                                    bigfontsize: 16),

                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.star_outline,
                                  size: 15.r,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                MySmallText(
                                    mytext: "${myHotelListData[index].rating}",
                                    myFontcolors:
                                    AppColors.myBlack.withOpacity(0.6),
                                    myFontwidth: null,
                                    smallfontsize: 13)
                              ],
                            ),
                          ],
                        ),
                      ),
                      //
                      // location and price will add here

                      SizedBox(height: 2.h,),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 10, right: 10, bottom: 1.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //rating
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_location_rounded,
                                  size: 14.r,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                MySmallText(
                                    mytext: myHotelListData[index]
                                        .locations,
                                       // .substring(0, 16),
                                    myFontcolors:
                                        AppColors.myBlack.withOpacity(0.6),
                                    myFontwidth: null,
                                    smallfontsize: 12)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyBigText(
                                    mybigtext: "125",
                                    myBigFontcolors: AppColors.myOrange,
                                    myBigFontwidth: FontWeight.bold,
                                    bigfontsize: 12),
                                MySmallText(
                                    mytext: "/"+"person",
                                    myFontcolors:
                                        AppColors.myBlack.withOpacity(0.6),
                                    myFontwidth: null,
                                    smallfontsize: 11)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
