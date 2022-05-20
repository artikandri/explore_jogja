import 'package:flutter/material.dart';
import 'package:jogja/screens/home/components/home_body.dart';
import 'package:jogja/stylings/index.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
