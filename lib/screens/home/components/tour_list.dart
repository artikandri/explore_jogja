import 'package:flutter/material.dart';
import 'package:jogja/screens/home/components/tour_card.dart';

class TourList extends StatelessWidget {
  int _displayLimit = 3;
  List tours = [];

  TourList({Key? key, required this.tours}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => TourCard(
              tour: tours[index],
            ),
          ),
        ],
      ),
    );
  }
}
