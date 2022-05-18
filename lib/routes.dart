import 'package:flutter/widgets.dart';
import 'package:jogja/screens/home/home_screen.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

final Map<String, WidgetBuilder> routes = {
  DetailScreen.routeName: (context) => DetailScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
