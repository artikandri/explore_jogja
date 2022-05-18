import 'package:flutter/material.dart';
import 'package:jogja/mock_datas/accomodations.dart';
import 'package:jogja/screens/home/components/accomodation_card.dart';

class AccomodationList extends StatelessWidget {
  int _displayLimit = 3;

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => AccomodationCard(
              accomodation: kAccomodations[index],
            ),
          ),
        ],
      ),
    );
  }
}
