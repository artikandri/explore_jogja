import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jogja/models/size_config.dart';
import 'header.dart';
import 'section_title.dart';
import 'accomodation_list.dart';
import 'tour_list.dart';
import 'place_list.dart';
import 'event_list.dart';
import 'menu_items.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppLocalizations.of(context)!.greeting,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 12, 0, 0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: const Align(
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
            const Header(),
            SizedBox(height: getProportionateScreenHeight(30)),
            MenuItems(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.placeTitle,
                press: () {
                  // do something
                  // go to tour page
                },
              ),
            ),
            PlaceList(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.eventTitle,
                press: () {
                  // do something
                  // go to tour page
                },
              ),
            ),
            EventList(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.accomodationTitle,
                press: () {
                  // do something
                  // go to accomodation page
                },
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            AccomodationList(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.tourTitle,
                press: () {
                  // do something
                  // go to tour page
                },
              ),
            ),
            TourList(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
