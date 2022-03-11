import 'package:flutter/material.dart';
import 'package:food_order/constant.dart';
import 'package:food_order/size_config.dart';
import 'package:food_order/splash/splash_screen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int orderCount = 0;
  double price = 9.00;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/detail.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SplashScreen.nameRoute);
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: kBackground,
                    size: 35,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.favorite,
                    color: kPrimary,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * .5),
            height: SizeConfig.screenHeight * .5,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "The Big King Burger",
                        style: TextStyle(
                            color: kTextColor,
                            fontFamily: "Poppins",
                            fontSize: 21,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "\$${price}",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "With Extra Cheese",
                        style: TextStyle(
                            color: Color(0xFFB6B6B6),
                            fontSize: 15,
                            fontFamily: "Poppins"),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: kPrimary,
                          ),
                          Text("4.9")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: kPrimary,
                              )
                            ],
                          ),
                          Text(
                            "Large",
                            style: TextStyle(
                                color: kTextColor,
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          Text(
                            "10-20 min",
                            style: TextStyle(
                                color: kTextColor,
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          Text(
                            "10-20 min",
                            style: TextStyle(
                                color: kTextColor,
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: kTextColor,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The Big King features two flame-grilled beef patties topped with fresh lettuce,sliced...",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Color(0xFFB6B6B6)),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: SizeConfig.screenWidth * .8,
                      height: 45,
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(250))),
                            backgroundColor:
                                MaterialStateProperty.all(kPrimary)),
                        onPressed: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: const Text(
                                    "Tetap Makan!",
                                    style: TextStyle(
                                        color: kPrimary,
                                        fontFamily: "Poppins",
                                        fontSize: 20),
                                  ),
                                  content: const Text(
                                    "Meski makan tidak akan mengobati kerinduan ekeke",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 18),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, "Ok");
                                        },
                                        child: const Text(
                                          "OK",
                                          style: TextStyle(
                                              color: kPrimary,
                                              fontFamily: "Poppins",
                                              fontSize: 18),
                                        ))
                                  ],
                                )),
                        child: Text(
                          "Add to Chart (${price * orderCount})",
                          style: TextStyle(
                              color: kBackground,
                              fontFamily: "Poppins",
                              fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 149,
              height: 53,
              margin: EdgeInsets.only(top: SizeConfig.screenHeight * .47),
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      if (orderCount > 0) {
                        setState(() {
                          orderCount--;
                        });
                      }
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                          color: kBackground,
                          fontFamily: "Poppins",
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(orderCount.toString(),
                      style: TextStyle(
                          color: kBackground,
                          fontFamily: "Poppins",
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                  InkWell(
                    onTap: () {
                      setState(() {
                        orderCount++;
                      });
                    },
                    child: Text("+",
                        style: TextStyle(
                            color: kBackground,
                            fontFamily: "Poppins",
                            fontSize: 30,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
