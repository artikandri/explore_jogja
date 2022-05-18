import 'package:flutter/material.dart';
import 'package:jogja/models/size_config.dart';

const kBlack = Color(0xFF1A1A1A);
const kLightGray = Color(0xFFEDF0F7);
const kGray = Color(0xFF757575);
const kDarkGray = Color(0xFFBBBBBB);
const kWhite = Color(0xFFFAFAFA);

const kPrimaryColor = Color.fromARGB(255, 83, 81, 248);
const kPrimaryLightColor = Color.fromARGB(255, 241, 228, 218);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 150, 174, 240),
    Color.fromARGB(255, 170, 200, 245)
  ],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color.fromARGB(255, 24, 23, 23);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

const kFontSize = 16;
