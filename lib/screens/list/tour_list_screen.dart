import 'package:flutter/material.dart';
import 'package:jogja/screens/list/components/list_body.dart';
import 'package:jogja/mock_datas/index.dart';
import 'package:jogja/stylings/index.dart';

class TourListScreen extends StatelessWidget {
  static String routeName = "/tours";

  const TourListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(title: "Tours", items: kTours, type: 3),
    );
  }
}
