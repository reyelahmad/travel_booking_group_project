import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_group_project/model/color.dart';
import 'package:travel_booking_group_project/widgets/my_font_style.dart';

class ListRowList extends StatefulWidget {
  const ListRowList({Key? key}) : super(key: key);

  @override
  _ListRowListState createState() => _ListRowListState();
}

var textmenulistSelected = 0;

class _ListRowListState extends State<ListRowList> {
  @override
  Widget build(BuildContext context) {
    final List textmenulist = [
      'All',
      'Popular',
      'Recommended',
      'Most Viewed',
      'New',
      'Peoples choice'
    ];
    return SizedBox(
        height: 20,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: textmenulist.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    textmenulistSelected = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text("${textmenulist[index]}",
                      style: textmenulistSelected == index
                          ? TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'fira',
                              color: AppColors.myBlack)
                          : TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'firaR',
                              color: AppColors.myBlack.withOpacity(0.5))),
                ),
              );
            }));
  }
}
