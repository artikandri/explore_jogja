import 'package:flutter/material.dart';
import 'package:jogja/constants.dart';
import 'package:jogja/helpers/shared_prefs_helper.dart';
import 'package:jogja/providers/language_provider.dart';
import 'package:provider/provider.dart';

Future _getLanguage() async {
  String language = await SharedPrefsHelper().getData("language_code");
  language = language != "" ? language : 'en';

  return language;
}

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({
    Key? key,
  }) : super(key: key);

  @override
  _LanguageDropdownState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
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

    return DropdownButton(
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
    );
  }
}
