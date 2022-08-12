import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/hotel_data_info.dart';
import 'package:travel_booking_group_project/screen/details_screen_proparty/circle_menu_list_for_details_page.dart';
import 'package:travel_booking_group_project/screen/home_screen.dart';
import 'package:travel_booking_group_project/screen/home_screen_proparty/circle_menu_list.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({this.model});

  final TravelData? model;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 5.h, left: 3.w, right: 3.h, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            size: 25.r,
                            color: AppColors.myBlack,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          MySmallText(
                              mytext: "Back",
                              myFontcolors: AppColors.myBlack.withOpacity(0.9),
                              myFontwidth: null,
                              smallfontsize: 15)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 310.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: AppColors.myOfwhite,
                              image: DecorationImage(
                                  image: AssetImage('${widget.model!.img}'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          right: 20.w,
                          top: 35.h,
                          bottom: 35.h,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.myWhite.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(15.r)),
                              height: 250.h,
                              width: 60.w,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: widget.model?.imglist.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 5, right: 5),
                                        child: Container(
                                          // margin: EdgeInsets.only(top: 8.h,),
                                          height: 45.h,
                                          width: 50.w,

                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2.r,
                                                  color: AppColors.myWhite
                                                      .withOpacity(0.9)),
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: AppColors.myBlack
                                                  .withOpacity(0.5),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "${widget.model!.imglist[index]}"),
                                                  fit: BoxFit.cover)),
                                        ),
                                      );
                                    }),
                              )),
                        )
                        //  Text("${model!.name}")
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Circle_menu_For_Details_Screen(),
                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(
                      color: AppColors.myBlack.withOpacity(0.5),
                      thickness: 1.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyBigText(
                            mybigtext: "${widget.model!.name}",
                            myBigFontcolors: AppColors.myBlack,
                            myBigFontwidth: FontWeight.bold,
                            bigfontsize: 22),
                        Row(
                          children: [
                            Icon(
                              Icons.star_outline,
                              size: 16.r,
                              color: AppColors.myBlack.withOpacity(0.5),
                            ),
                            MySmallText(
                                mytext: "${widget.model!.rating}" +
                                    "(${widget.model!.review} review) ",
                                myFontcolors:
                                    AppColors.myBlack.withOpacity(0.5),
                                myFontwidth: null,
                                smallfontsize: 14)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 16.r,
                              color: AppColors.myBlack.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            MySmallText(
                                mytext: "${widget.model!.locations}",
                                // .substring(0, 16),
                                myFontcolors:
                                    AppColors.myBlack.withOpacity(0.6),
                                myFontwidth: null,
                                smallfontsize: 14),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.my_location_sharp,
                              size: 16.r,
                              color: AppColors.myOrange,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            MySmallText(
                                mytext: "Map Direction",
                                // .substring(0, 16),
                                myFontcolors: AppColors.myOrange,
                                myFontwidth: FontWeight.bold,
                                smallfontsize: 14),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    MyBigText(
                        mybigtext: "Description",
                        myBigFontcolors: AppColors.myBlack,
                        myBigFontwidth: FontWeight.bold,
                        bigfontsize: 18),
                    SizedBox(
                      height: 5.h,
                    ),
                    MySmallText(
                        mytext: "${widget.model!.description}",
                        myFontcolors: AppColors.myBlack.withOpacity(0.6),
                        myFontwidth: null,
                        smallfontsize: 14),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 55.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.myWhite,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1.w, color: AppColors.myOrange)),
                              child: Center(
                                  child: MySmallText(
                                      mytext: "${widget.model!.price} tk/=",
                                      myFontcolors: AppColors.myOrange,
                                      myFontwidth: FontWeight.w800,
                                      smallfontsize: 16)),
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 55.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.myOrange,
                                borderRadius: BorderRadius.circular(15),
                                //border: Border.all(width: 1.w,color: AppColors.myOrange)
                              ),
                              child: Center(
                                  child: MySmallText(
                                      mytext: "Book Now",
                                      myFontcolors: AppColors.myWhite,
                                      myFontwidth: FontWeight.w800,
                                      smallfontsize: 16)),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
