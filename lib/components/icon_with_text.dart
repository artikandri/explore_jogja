import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';

class IconWithText extends StatelessWidget {
  final Icon icon;
  final String text;

  const IconWithText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(children: [
        icon,
        SizedBox(
          width: getProportionateScreenWidth(5),
        ),
        Text(text, style: TextStyle(fontSize: getProportionateScreenWidth(12)))
      ]),
    );
  }
}
