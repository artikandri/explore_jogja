import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPrefsHelper {
  setData(String key, var value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, json.encode(value));
  }

  Future getData(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return json.decode(myPrefs.getString(key));
  }
}
