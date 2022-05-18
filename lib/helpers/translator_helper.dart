import "package:translator/translator.dart";
import "package:jogja/helpers/shared_prefs_helper.dart";

class TranslatorHelper {
  final SharedPrefsHelper sharedPrefsHelper = SharedPrefsHelper();
  final translator = GoogleTranslator();
  String language_code = "en";

  TranslatorHelper() {
    initState();
  }

  void initState() {
    sharedPrefsHelper.getData("language_code").then((value) {
      language_code = value;
    });
  }

  Future translate(String text) async {
    return await translator.translate(text, from: 'en', to: language_code);
  }
}
