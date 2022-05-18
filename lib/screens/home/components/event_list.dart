import 'package:flutter/material.dart';
import 'package:jogja/screens/home/components/event_card.dart';

class EventList extends StatelessWidget {
  int _displayLimit = 3;
  List events = [];

  EventList({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            _displayLimit,
            (index) => EventCard(
              event: events[index],
            ),
          ),
        ],
      ),
    );
  }
}
