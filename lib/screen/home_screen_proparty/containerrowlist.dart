import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/model/container_menu_list.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class ContainerRowList extends StatefulWidget {
  const ContainerRowList({Key? key}) : super(key: key);

  @override
  _ContainerRowListState createState() => _ContainerRowListState();
}

class _ContainerRowListState extends State<ContainerRowList> {
  var rowmenulist1selected=0;
  @override
  Widget build(BuildContext context) {
    var rowmenulist=MenuList.myrowMenuListData();
    return SizedBox(
      height: 70,
      child: ListView.builder(
        //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:rowmenulist.length ,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){

                setState(() {
                  rowmenulist1selected=index;
                });
              },
              child: Container(
                margin: EdgeInsets.all(4.r),
                height: 50.h,
                width: 130.w,
                decoration: BoxDecoration(
                  boxShadow: rowmenulist1selected==index?[
                    BoxShadow(
                        spreadRadius: .1,
                        blurRadius: 2,
                        offset: Offset(0,0)
                    ),
                  ]:[ BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(0,0)
                  ),],
                  color: rowmenulist1selected==index? AppColors.myOrange:AppColors.myWhite,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 1),
                  child: Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: AppColors.myWhite,
                          borderRadius: BorderRadius.circular(10.r),

                        ),
                        child: SvgPicture.asset(rowmenulist[index].img,fit: BoxFit.cover,),),


                      SizedBox(width: 5.w,),
                      MySmallText(mytext: rowmenulist[index].name, myFontcolors: AppColors.myBlack.withOpacity(0.5), myFontwidth: null, smallfontsize: 15)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
