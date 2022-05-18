import 'package:flutter/material.dart';
import 'package:jogja/models/size_config.dart';
import 'package:jogja/components/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            CustomBackButton(),
          ],
        ),
      ),
    );
  }
}