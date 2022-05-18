import 'package:flutter/material.dart';
import 'package:jogja/screens/home/components/place_card.dart';

class PlaceList extends StatelessWidget {
  int _displayLimit = 3;
  List places = [];

  PlaceList({Key? key, required this.places}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => PlaceCard(
              place: places[index],
            ),
          ),
        ],
      ),
    );
  }
}
