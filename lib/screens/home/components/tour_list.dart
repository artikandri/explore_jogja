import 'package:flutter/material.dart';
import 'package:jogja/mock_datas/tours.dart';
import 'package:jogja/screens/home/components/tour_card.dart';

class TourList extends StatelessWidget {
  int _displayLimit = 3;

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => TourCard(
              tour: kTours[index],
            ),
          ),
        ],
      ),
    );
  }
}
