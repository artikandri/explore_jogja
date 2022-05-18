// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jogja/mock_datas/accomodations.dart';
import 'package:jogja/screens/home/components/accomodation_card.dart';
import 'package:jogja/models/constants.dart';
import 'package:jogja/models/size_config.dart';
import 'header.dart';
import 'section_title.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 12, 0, 0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Yogyakarta',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 12, 0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Header(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: "Popular Accomodations",
                press: () {
                  // do something
                  // go to accomodation page
                },
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    kAccomodations.length,
                    (index) => AccomodationCard(
                      accomodation: kAccomodations[index],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
