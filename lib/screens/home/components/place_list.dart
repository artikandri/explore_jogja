import 'package:flutter/material.dart';
import 'package:jogja/mock_datas/places.dart';
import 'package:jogja/screens/home/components/place_card.dart';

class PlaceList extends StatelessWidget {
  int _displayLimit = 3;

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => PlaceCard(
              place: kPlaces[index],
            ),
          ),
        ],
      ),
    );
  }
}
