import 'package:flutter/material.dart';
import 'package:food_order/size_config.dart';
import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  static const nameRoute = 'detailPage';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
