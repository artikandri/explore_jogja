import 'package:flutter/material.dart';
import 'package:jogja/components/custom_app_bar.dart';
import 'package:jogja/screens/detail/components/detail_body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final dynamic arguments = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: DetailBody(type: arguments["type"], data: arguments["data"]),
    );
  }
}
