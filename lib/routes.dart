import 'package:flutter/widgets.dart';
import 'package:jogja/screens/home/home_screen.dart';
import 'package:jogja/screens/detail/detail_screen.dart';
import 'package:jogja/screens/list/accomodation_list_screen.dart';
import 'package:jogja/screens/list/event_list_screen.dart';
import 'package:jogja/screens/list/place_list_screen.dart';
import 'package:jogja/screens/list/tour_list_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AccomodationListScreen.routeName: (context) => AccomodationListScreen(),
  TourListScreen.routeName: (context) => TourListScreen(),
  EventListScreen.routeName: (context) => EventListScreen(),
  PlaceListScreen.routeName: (context) => PlaceListScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
