import 'package:flutter/material.dart';
import 'package:jogja/screens/list/components/event_card.dart';
import 'package:jogja/screens/list/components/place_card.dart';
import 'package:jogja/screens/list/components/accomodation_card.dart';
import 'package:jogja/screens/list/components/tour_card.dart';

class ItemCard extends StatelessWidget {
  final int type;
  final dynamic data;

  const ItemCard({Key? key, required this.type, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget component = Container();
    switch (type) {
      case 0:
        component = PlaceCard(place: data);
        break;
      case 1:
        component = EventCard(event: data);
        break;
      case 2:
        component = AccomodationCard(accomodation: data);
        break;
      case 3:
        component = TourCard(tour: data);
        break;
      default:
        component = Container();
        break;
    }

    return component;
  }
}
