import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  LanguageProvider() {
    checkLanguageCode();
  }
  String languageCode = "en";

  void setLanguageCode(value) {
    languageCode = value;
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString("language_code", value);
    });
    notifyListeners();
  }

  String getLanguageCode() {
    return languageCode;
  }

  Future<String?> checkLanguageCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString("language_code") ?? "en";

    return languageCode;
  }
}
