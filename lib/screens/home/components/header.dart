import 'package:flutter/material.dart';
import 'package:jogja/models/constants.dart';
import 'package:jogja/models/size_config.dart';
import 'package:jogja/helpers/shared_prefs_helper.dart';
import 'package:jogja/providers/app_provider.dart';
import 'package:provider/provider.dart';

Future _getLanguage() async {
  String language = await SharedPrefsHelper().getData("language_code");
  language = language != "" ? language : 'en';
  Locale locale = new Locale(language, '');

  return language;
}

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String _selectedLanguage = "en";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _getLanguage().then((res) {
      setState(() {
        _selectedLanguage = res;
      });
    });

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            width: SizeConfig.screenWidth * 0.6,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
          ),
          DropdownButton(
            hint: Text('Language'),
            value: _selectedLanguage,
            onChanged: (languageOption) {
              setState(() {
                _selectedLanguage = languageOption.toString();
              });
              Provider.of<LanguageProvider>(context, listen: false)
                  .setLanguageCode(languageOption.toString());
            },
            items: kLanguageOptions.map((LanguageOption languageOption) {
              return DropdownMenuItem(
                child: Text(languageOption.label),
                value: languageOption.value,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
