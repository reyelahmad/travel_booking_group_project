import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/hotel_data_info.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class HotelList extends StatelessWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hoteldata = TravelData.myHotelListData();
    return SizedBox(
        height: 180.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hoteldata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 8, top: 8, bottom: 8),
                  width: 180.w,
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
                    children: [
                      //hotel image will add here
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 115.h,
                              width: 160.w,
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
                              right: 7.5.w,
                              top: 15.h,
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
                            top: 5, left: 10, right: 10, bottom: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyBigText(
                                    mybigtext: hoteldata[index].name,
                                    myBigFontcolors: AppColors.myBlack,
                                    myBigFontwidth: FontWeight.w800,
                                    bigfontsize: 15),

                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.star_outline,
                                  size: 13.r,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                MySmallText(
                                    mytext: "${hoteldata[index].rating}",
                                    myFontcolors:
                                    AppColors.myBlack.withOpacity(0.6),
                                    myFontwidth: null,
                                    smallfontsize: 12)
                              ],
                            ),
                          ],
                        ),
                      ),
                      // location and price will add here
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 10, right: 10, bottom: 1),
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
                                  size: 12.r,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                MySmallText(
                                    mytext: hoteldata[index]
                                        .locations
                                        .substring(0, 16),
                                    myFontcolors:
                                        AppColors.myBlack.withOpacity(0.6),
                                    myFontwidth: null,
                                    smallfontsize: 11)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyBigText(
                                    mybigtext: "125",
                                    myBigFontcolors: AppColors.myOrange,
                                    myBigFontwidth: FontWeight.bold,
                                    bigfontsize: 11),
                                MySmallText(
                                    mytext: "/person",
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
