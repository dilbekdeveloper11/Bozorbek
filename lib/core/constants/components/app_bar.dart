import 'package:flutter/material.dart';
import 'package:twopage/core/constants/Size_config.dart';
import 'package:twopage/core/constants/colors.dart';

class Appbar {
  static MyAppBar({required String text}) {
    return AppBar(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(getH(20)),
          bottomLeft: Radius.circular(
            getH(20),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      title: Text(
        "История заказов",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: getW(20),
          color: MyColor.ABTColor,
        ),
      ),
    );
  }
}
