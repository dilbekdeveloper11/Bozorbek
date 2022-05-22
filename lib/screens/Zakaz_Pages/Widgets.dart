import 'package:flutter/material.dart';
import 'package:twopage/core/constants/Size_config.dart';
import 'package:twopage/core/constants/colors.dart';

class RowTwoPage{
  static Rows({required String text1,required String text2,Color? textcolor,required double size,}) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: getW(13),
            color: MyColor.ABTColor60,
          ),
        ),
        SizedBox(width: getW(size)),
        Text(
          text2,
          style: TextStyle(
            fontSize: getW(10),
            color: textcolor==null ? MyColor.ABTColor60 : textcolor, 
          ),
        ),
      ],
    );
  }
}
