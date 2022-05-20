import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/helpers/shared_prefs_helper.dart';

class CustomTts extends StatefulWidget {
  final String text;

  const CustomTts({Key? key, required this.text}) : super(key: key);

  @override
  State<CustomTts> createState() => _CustomTtsState();
}

class _CustomTtsState extends State<CustomTts> {
  FlutterTts? tts = FlutterTts();
  SharedPrefsHelper sharedPrefsHelper = SharedPrefsHelper();

  @override
  void initState() {
    super.initState();
    String languageCode = "en";
    sharedPrefsHelper.getData("language_code").then((value) {
      languageCode = value;
    });
    tts!.setLanguage(languageCode);
    tts!.setSpeechRate(0.4);
  }

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
        onPressed: () {
          tts!.speak(widget.text);
        },
        child: Icon(
          Icons.mic,
          color: Colors.black,
          size: getProportionateScreenWidth(30),
        ),
      ),
    );
  }
}
