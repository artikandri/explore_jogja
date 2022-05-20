import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          primary: AppColors.kPrimaryColor,
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
        ),
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}
