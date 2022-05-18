import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  LanguageProvider() {
    checkLanguageCode();
  }
  String language_code = "en";
  Key key = UniqueKey();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void setKey(value) {
    key = value;
    notifyListeners();
  }

  void setNavigatorKey(value) {
    navigatorKey = value;
    notifyListeners();
  }

  void setLanguageCode(value) {
    language_code = value;
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString("language_code", value);
    });
    notifyListeners();
  }

  String getLanguageCode() {
    return language_code;
  }

  Future<String?> checkLanguageCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString("language_code") ?? "en";

    return languageCode;
  }
}
