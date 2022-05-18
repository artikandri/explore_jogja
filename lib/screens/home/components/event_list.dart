import 'package:flutter/material.dart';
import 'package:jogja/mock_datas/events.dart';
import 'package:jogja/screens/home/components/event_card.dart';

class EventList extends StatelessWidget {
  int _displayLimit = 3;

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => EventCard(
              event: kEvents[index],
            ),
          ),
        ],
      ),
    );
  }
}
