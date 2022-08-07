


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySmallText extends StatelessWidget {

  String mytext;
  int smallfontsize;
  Color? myFontcolors;
  dynamic myFontwidth;

  MySmallText(
  {required this.mytext,required this.myFontcolors,required this.myFontwidth,required this.smallfontsize}
      );


  @override
  Widget build(BuildContext context) {

    return Text(
      mytext,
      style: TextStyle(
        fontSize: smallfontsize.sp,
        fontFamily: 'firaR',//fira regular
        fontWeight: myFontwidth,
        color: myFontcolors,
      ),

    );
  }
}
class MyBigText extends StatelessWidget {

  String mybigtext;
  int bigfontsize;
  Color? myBigFontcolors;
  dynamic myBigFontwidth;

  MyBigText(
  {required this.mybigtext,required this.myBigFontcolors,required this.myBigFontwidth,required this.bigfontsize}
      );


  @override
  Widget build(BuildContext context) {

    return Text(
      mybigtext,
      style: TextStyle(
        fontSize: bigfontsize.sp,
        fontFamily: 'fira',//fira bold
        fontWeight: myBigFontwidth,
        color: myBigFontcolors,
      ),

    );
  }
}
