import 'package:flutter/material.dart';
import 'package:jogja/screens/detail/components/place_detail_body.dart';
import 'package:jogja/screens/detail/components/event_detail_body.dart';
import 'package:jogja/screens/detail/components/accomodation_detail_body.dart';
import 'package:jogja/screens/detail/components/tour_detail_body.dart';

class DetailBody extends StatelessWidget {
  final int type;
  final dynamic data;

  const DetailBody({Key? key, required this.type, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget component = Container();
    switch (type) {
      case 0:
        component = PlaceDetailBody(data: data);
        break;
      case 1:
        component = EventDetailBody(data: data);
        break;
      case 2:
        component = AccomodationDetailBody(data: data);
        break;
      case 3:
        component = TourDetailBody(data: data);
        break;
      default:
        component = Container();
        break;
    }

    return component;
  }
}
