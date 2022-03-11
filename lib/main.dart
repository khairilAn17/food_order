import 'package:flutter/material.dart';
import 'package:food_order/constant.dart';
import 'package:food_order/detail/detail_screen.dart';
import 'package:food_order/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kPrimary, backgroundColor: kBackground),
      home: SplashScreen(),
      initialRoute: SplashScreen.nameRoute,
      routes: {
        SplashScreen.nameRoute: (context) => SplashScreen(),
        DetailScreen.nameRoute: (context) => DetailScreen(),
      },
    );
  }
}
