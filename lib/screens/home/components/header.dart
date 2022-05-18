// ignore_for_file: use_key_in_widget_constructors, avoid_print, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jogja/models/constants.dart';
import 'package:jogja/models/size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic dropdownValue = 'English';

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
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
            // child: TextField(
            //   onChanged: (value) => print(value),
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.symmetric(
            //         horizontal: getProportionateScreenWidth(20),
            //         vertical: getProportionateScreenWidth(10)),
            //     border: InputBorder.none,
            //     focusedBorder: InputBorder.none,
            //     enabledBorder: InputBorder.none,
            //     hintText: "Search hotel",
            //     icon: FaIcon(FontAwesomeIcons.searchengin),
            //   ),
            // ),
          ),
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              // setState(() {
              dropdownValue = newValue!;
              // });
            },
            items: <String>[
              'English',
              'Indonesia'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
