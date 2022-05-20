import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_tts.dart';
import "package:jogja/helpers/shared_prefs_helper.dart";
import 'package:translator/translator.dart';

class Description extends StatefulWidget {
  final String name;
  final String description;

  const Description({Key? key, required this.name, required this.description})
      : super(key: key);

  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  SharedPrefsHelper sharedPrefsHelper = SharedPrefsHelper();
  final translator = GoogleTranslator();

  String _languageCode = "en";
  String _translatedName = "";
  String _translatedDescription = "";
  bool shouldBeTranslated = false;

  @override
  void initState() {
    super.initState();

    sharedPrefsHelper.getData("language_code").then((value) {
      setState(() {
        _languageCode = value ?? "en";
        shouldBeTranslated = _languageCode != "en";
      });
      if (value != "en") {
        translator
            .translate(widget.name, from: 'en', to: _languageCode)
            .then((value) => _translatedName = value.toString());

        translator
            .translate(widget.description, from: 'en', to: _languageCode)
            .then((value) => _translatedDescription = value.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Text(
                shouldBeTranslated ? _translatedName : widget.name,
                style: TextStyle(fontSize: getProportionateScreenWidth(14)),
              )),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
            ),
            child: SizedBox(
                width: MediaQuery.of(context).size.width -
                    getProportionateScreenWidth(100),
                child: Text(
                  shouldBeTranslated
                      ? _translatedDescription
                      : widget.description,
                  style: TextStyle(fontSize: getProportionateScreenWidth(12)),
                )),
          ),
        ],
      ),
      CustomTts(
          text:
              shouldBeTranslated ? _translatedDescription : widget.description),
      SizedBox(
        width: getProportionateScreenWidth(20),
      ),
    ]));
  }
}
