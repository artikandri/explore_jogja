import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jogja/mock_datas/index.dart';
import 'package:jogja/models/size_config.dart';
import 'package:jogja/screens/list/accomodation_list_screen.dart';
import 'package:jogja/screens/list/place_list_screen.dart';
import 'package:jogja/screens/list/event_list_screen.dart';
import 'package:jogja/screens/list/tour_list_screen.dart';
import 'package:jogja/screens/home/components/header.dart';
import 'package:jogja/screens/home/components/section_title.dart';
import 'package:jogja/screens/home/components/item_list.dart';
import 'package:jogja/screens/home/components/menu_items.dart';

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
                  Navigator.pushNamed(context, PlaceListScreen.routeName);
                },
              ),
            ),
            ItemList(items: kPlaces, limit: 3, type: 0),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.eventTitle,
                press: () {
                  Navigator.pushNamed(context, EventListScreen.routeName);
                },
              ),
            ),
            ItemList(items: kEvents, limit: 3, type: 1),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.accomodationTitle,
                press: () {
                  Navigator.pushNamed(
                      context, AccomodationListScreen.routeName);
                },
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            ItemList(items: kAccomodations, limit: 3, type: 2),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.tourTitle,
                press: () {
                  Navigator.pushNamed(context, TourListScreen.routeName);
                },
              ),
            ),
            ItemList(items: kTours, limit: 3, type: 3),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
