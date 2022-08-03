


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
        fontFamily: 'firaR',
        fontWeight: myFontwidth,
        color: myFontcolors,
      ),

    );
  }
}
