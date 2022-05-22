import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twopage/core/constants/Size_config.dart';
import 'package:twopage/core/constants/colors.dart';
import 'package:twopage/core/constants/components/app_bar.dart';
import 'package:twopage/screens/Zakaz_Pages/Widgets.dart';

class IstoriyaZakazTwo extends StatelessWidget {
  const IstoriyaZakazTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColor.mainColor,
      appBar: Appbar.MyAppBar(text: "История заказов"),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Container(
              height: getH(47),
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColor.mainColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      getH(5),
                    ),
                    bottomRight: Radius.circular(getH(5))),
              ),
              child: Center(
                child: Text(
                  "5 Марта 2022  04:25",
                  style: TextStyle(
                    fontSize: getW(15),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: getH(495),
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top: getH(20), left: getW(21)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Статус",
                        style: TextStyle(
                          fontSize: getW(15),
                          color: MyColor.ABTColor,
                        ),
                      ),
                      SizedBox(width: getW(163)),
                      Text(
                        "Доставлено",
                        style: TextStyle(
                          fontSize: getW(20),
                          color: MyColor.ABTColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(19)),
                  Container(
                    height: getH(96),
                    width: getW(344),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(getH(5)),
                      color: const Color(0xffEEF3F9),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: getH(22),
                          left: getW(15.86),
                          child: Image.asset("assets/images/Group 14401.png"),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: getH(10), left: getW(81)),
                          child: Column(
                            children: [
                              RowTwoPage.Rows(
                                  text1: "Водитель:",
                                  text2: "Сардо Саркоров",
                                  size: 53),
                              SizedBox(height: getH(8)),
                              RowTwoPage.Rows(
                                  text1: "Номер машины:",
                                  text2: "01 A 235 AB",
                                  size: 15),
                              SizedBox(height: getH(8)),
                              RowTwoPage.Rows(
                                  text1: "Марка машины:",
                                  text2: "Shevrolet Spark",
                                  size: 15),
                              SizedBox(height: getH(8)),
                              RowTwoPage.Rows(
                                text1: "Телефон номер:",
                                text2: "+ 998 90 546 22 33",
                                size: 15,
                                textcolor: const Color(0xff70ADEE),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: getH(10)),
                  Container(
                    height: getH(325),
                    width: getW(344),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(getH(5)),
                      color: const Color(0xffEEF3F9),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: getH(15), left: getW(15)),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Всего цена",
                                  style: TextStyle(
                                    fontSize: getH(15),
                                    color: MyColor.mainColor,
                                  ),
                                ),
                                SizedBox(width: getW(132)),
                                Text(
                                  "155.000 Сум",
                                  style: TextStyle(
                                    fontSize: getH(10),
                                    color: MyColor.mainColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getH(20)),
                            Container(
                              height: getH(0.5),
                              width: getW(310),
                              color: Color(0xffC4C4C4).withOpacity(0.5),
                            ),
                            SizedBox(height: getH(8.5)),
                            Container(
                              height: getH(68),
                              width: getW(315),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getH(5)),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: getH(11), left: getW(13)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: getH(10)),
                                        SvgPicture.asset(
                                          "assets/images/Group 875.svg",
                                        ),
                                        SizedBox(width: getW(15)),
                                        Text(
                                          "Заказ № 25263",
                                          style: TextStyle(
                                            fontSize: getW(13),
                                            color: MyColor.ABTColor60,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: getH(10)),
                                    Row(
                                      children: [
                                        SizedBox(width: getW(10)),
                                        Image.asset(
                                          "assets/images/pin 2 (1).png",
                                        ),
                                        SizedBox(width: getW(15)),
                                        Text(
                                          "Чиланзар 24. Дом 53/36",
                                          style: TextStyle(
                                              fontSize: getW(13),
                                              color: MyColor.ABTColor60,),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: getH(8)),
                            Container(
                              height: getH(0.5),
                              width: getW(310),
                              color: Color(0xffC4C4C4).withOpacity(0.5),
                            ),
                            SizedBox(height: getH(8)),
                            Container(
                              height: getH(224),
                              width: getW(315),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getH(5)),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: getH(10), left: getW(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Детально о покупке",
                                      style: TextStyle(
                                        fontSize: getW(13),
                                        color: MyColor.mainColor,
                                      ),
                                    ),
                                    SizedBox(height: getH(10)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: getH(8)),
                            Container(
                              height: getH(0.5),
                              width: getW(310),
                              color: const Color(0xffC4C4C4).withOpacity(0.5),
                            ),
                            SizedBox(height: getH(15)),
                            Row(
                              children: [
                                Text(
                                  "Доставка до  локации",
                                  style: TextStyle(
                                    fontSize: getW(13),
                                    color: const Color(0xff00CF53),
                                  ),
                                ),
                                SizedBox(width: getW(96)),
                                Text(
                                  "13.000 Сум",
                                  style: TextStyle(
                                    fontSize: getW(13),
                                    color: const Color(0xff00CF53),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getH(15)),
                            Row(
                              children: [
                                Text(
                                  "Всего сумма:",
                                  style: TextStyle(
                                    fontSize: getW(13),
                                    color: const Color(0xff70ADEE),
                                  ),
                                ),
                                SizedBox(width: getW(146)),
                                Text(
                                  "155.000 Сум",
                                  style: TextStyle(
                                    fontSize: getW(13),
                                    color: const Color(0xff70ADEE),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getH(20)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
