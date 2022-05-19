import 'package:flutter/material.dart';
import 'package:jogja/screens/list/components/list_body.dart';
import 'package:jogja/mock_datas/index.dart';
import 'package:jogja/models/size_config.dart';

class PlaceListScreen extends StatelessWidget {
  static String routeName = "/destinations";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(title: "Destinations", items: kPlaces, type: 0),
    );
  }
}