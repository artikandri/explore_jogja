import 'package:flutter/material.dart';

import 'package:jogja/models/size_config.dart';
import 'package:jogja/models/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: press,
          // ignore: prefer_const_constructors
          child: Text(
            "See More",
            // ignore: prefer_const_constructors
            style: TextStyle(color: kDarkGray),
          ),
        ),
      ],
    );
  }
}
