import 'package:flutter/material.dart';
import 'package:jogja/mock_datas/index.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/screens/list/components/list_body.dart';

class PlaceListScreen extends StatelessWidget {
  static String routeName = "/destinations";

  const PlaceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(title: "Destinations", items: kPlaces, type: 0),
    );
  }
}
