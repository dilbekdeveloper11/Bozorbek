import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twopage/core/constants/Size_config.dart';
import 'package:twopage/core/constants/components/app_bar.dart';
import 'package:twopage/main.dart';

class IstoriyaPoiskPage extends StatelessWidget {
  const IstoriyaPoiskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: Appbar.MyAppBar(text: "История поиска"),
      body: Padding(
        padding: EdgeInsets.only(top: getW(22), left: getW(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "12 Марта-12.03.2022 г",
                  style: TextStyle(
                    fontSize: getW(15),
                    color: const Color(0xff00CF53),
                  ),
                ),
                SizedBox(width: getH(14)),
                Container(
                  height: getW(28),
                  width: getW(159),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getH(5)),
                    color: const Color(0xff70ADEE),
                  ),
                  child: Center(
                    child: Text(
                      "Очистить историю",
                      style: TextStyle(
                        fontSize: getW(15),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getH(16)),
            Container(
              height: getH(68),
              width: getW(345),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getH(5)),
                color: const Color(0xffEEF3F9),
              ),
              child: Row(
                children: [
                  Container(
                    height: getH(68),
                    width: getW(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getH(5)),
                        bottomLeft: Radius.circular(getH(5)),
                      ),
                    ),
                  ),
                  SizedBox(width: getW(15)),
                  Container(
                    height: getW(15),
                    width: getW(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getH(3)),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
