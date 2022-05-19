import 'package:flutter/material.dart';
import 'package:jogja/screens/list/components/list_body.dart';
import 'package:jogja/mock_datas/index.dart';
import 'package:jogja/models/size_config.dart';

class TourListScreen extends StatelessWidget {
  static String routeName = "/tours";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(title: "tours", items: kTours, type: 2),
    );
  }
}
