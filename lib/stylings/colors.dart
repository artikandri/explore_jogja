import 'package:flutter/material.dart';

class AppColors {
  static const kBlack = Color(0xFF1A1A1A);
  static const kLightGray = Color.fromARGB(255, 228, 228, 228);
  static const kGray = Color(0xFF757575);
  static const kDarkGray = Color(0xFFBBBBBB);
  static const kWhite = Color(0XFFFFFFFF);

  static const kPrimaryColor = Color.fromARGB(255, 83, 81, 248);
  static const kPrimaryLightColor = Color.fromARGB(255, 241, 228, 218);
  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 150, 174, 240),
      Color.fromARGB(255, 170, 200, 245)
    ],
  );
  static const kSecondaryColor = Color(0xFF979797);
}
