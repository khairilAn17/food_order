import 'package:flutter/material.dart';
import 'package:food_order/constant.dart';
import 'package:food_order/detail/detail_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        SizedBox(
          child: Image.asset(
            "assets/images/splash.png",
            fit: BoxFit.cover,
          ),
          width: double.infinity,
        ),
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Image.asset("assets/images/logo.png"),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Text(
              "Good Food",
              style: TextStyle(
                  color: kBackground,
                  fontSize: 40,
                  height: .5,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Poppins"),
            ),
            Text(
              "Good Mood",
              style: TextStyle(
                  color: kBackground,
                  fontSize: 40,
                  height: 1,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Poppins"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 10),
              child: SizedBox(
                width: 230,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(DetailScreen.nameRoute);
                  },
                  child: Text(
                    "Starts",
                    style: TextStyle(
                        color: kBackground,
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimary),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
