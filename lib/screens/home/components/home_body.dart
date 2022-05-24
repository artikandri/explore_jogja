import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jogja/mock_datas/index.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/screens/list/accomodation_list_screen.dart';
import 'package:jogja/screens/list/place_list_screen.dart';
import 'package:jogja/screens/list/event_list_screen.dart';
import 'package:jogja/screens/list/tour_list_screen.dart';
import 'package:jogja/screens/home/components/language_dropdown.dart';
import 'package:jogja/screens/home/components/section_title.dart';
import 'package:jogja/screens/home/components/item_list.dart';
import 'package:jogja/screens/home/components/menu_items.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppLocalizations.of(context)!.greeting,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 12, 0, 0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                            height: getProportionateScreenHeight(50),
                            child: Image.asset(
                              "assets/images/logo.png",
                            )),
                      )
                    ],
                  ),
                  const LanguageDropdown(),
                ]),
            SizedBox(height: getProportionateScreenHeight(40)),
            MenuItems(),
            SizedBox(height: getProportionateScreenHeight(40)),
            SectionTitle(
              title: AppLocalizations.of(context)!.placeTitle,
              press: () {
                Navigator.pushNamed(context, PlaceListScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            ItemList(items: kPlaces, limit: 3, type: 0),
            SizedBox(height: getProportionateScreenHeight(40)),
            SectionTitle(
              title: AppLocalizations.of(context)!.eventTitle,
              press: () {
                Navigator.pushNamed(context, EventListScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            ItemList(items: kEvents, limit: 3, type: 1),
            SizedBox(height: getProportionateScreenHeight(40)),
            SectionTitle(
              title: AppLocalizations.of(context)!.accomodationTitle,
              press: () {
                Navigator.pushNamed(context, AccomodationListScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            ItemList(items: kAccomodations, limit: 3, type: 2),
            SizedBox(height: getProportionateScreenHeight(40)),
            SectionTitle(
              title: AppLocalizations.of(context)!.tourTitle,
              press: () {
                Navigator.pushNamed(context, TourListScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            ItemList(items: kTours, limit: 3, type: 3),
            SizedBox(height: getProportionateScreenHeight(40)),
          ],
        ),
      )),
    );
  }
}
