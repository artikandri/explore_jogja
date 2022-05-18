import 'package:flutter/material.dart';
import 'package:jogja/screens/home/components/accomodation_card.dart';

class AccomodationList extends StatelessWidget {
  int _displayLimit = 3;
  List accomodations;

  AccomodationList({Key? key, required this.accomodations}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => AccomodationCard(
              accomodation: accomodations[index],
            ),
          ),
        ],
      ),
    );
  }
}
