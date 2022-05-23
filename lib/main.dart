import 'package:flutter/material.dart';
import 'package:twopage/screens/Zakaz_Pages/istoriya_zakaz_one.dart';
import 'package:twopage/screens/Zakaz_Pages/istoriya_zakaz_two.dart';
import 'package:twopage/screens/istoriyaPoisk/istoriya_poisk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const IstoriyaZakazTwo(),
    );
  }
}

