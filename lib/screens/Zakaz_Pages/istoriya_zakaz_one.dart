import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twopage/core/constants/Size_config.dart';
import 'package:twopage/core/constants/colors.dart';
import 'package:twopage/core/constants/components/app_bar.dart';

class ZakazPageOne extends StatelessWidget {
  const ZakazPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: Appbar.MyAppBar(text: "История заказов"),
        body: Padding(
          padding: EdgeInsets.only(
            top: getH(15),
            left: getW(21),
            right: getW(10),
          ),
          child: Column(
            children: [
              Container(
                height: getH(53),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xffE5E5E5),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getH(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TabBar(
                      unselectedLabelColor: MyColor.mainColor,
                      indicator: BoxDecoration(
                        color: MyColor.mainColor,
                        borderRadius: BorderRadius.circular(
                          getH(8),
                        ),
                      ),
                      tabs: const [
                        Tab(
                          child: Text("История заказов"),
                        ),
                        Tab(
                          child: Text("История заказов"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getH(20)),
                child: Container(
                  height: getH(440),
                  color: Colors.transparent,
                  child: TabBarView(
                    children: [
                      Container(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: getH(20)),
                              child: Container(
                                  height: getH(84),
                                  width: getW(344),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEEF3F9),
                                    borderRadius: BorderRadius.circular(
                                      getH(5),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: getH(40),
                                        left: getW(312),
                                        child: const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                topLeft:
                                                    Radius.circular(getH(5)),
                                                topRight: Radius.circular(
                                                  getH(5),
                                                ),
                                              ),
                                            ),
                                            height: getH(2),
                                          ),
                                          SizedBox(height: getH(8)),
                                          Row(
                                            children: [
                                              SizedBox(width: getW(10)),
                                              Text(
                                                "05.03.2021",
                                                style: TextStyle(
                                                  fontSize: getW(8),
                                                  color:
                                                      MyColor.ABTColor,
                                                ),
                                              ),
                                              SizedBox(width: getW(152)),
                                              Text(
                                                "155.000 Сум",
                                                style: TextStyle(
                                                  fontSize: getW(15),
                                                  color:
                                                      MyColor.mainColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: getH(10)),
                                          Row(
                                            children: [
                                              SizedBox(width: getW(10)),
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
                                                  color: MyColor.ABTColor60
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            );
                          },
                          itemCount: 12,
                        ),
                      ),
                      Container(
                        child: const Text("Salom2"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
