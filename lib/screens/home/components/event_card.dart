import 'package:flutter/material.dart';
import 'package:jogja/models/event.dart';
import 'package:jogja/components/left_thumbnail_card.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    required this.event,
  }) : super(key: key);

  final double width, aspectRatio;
  final Event event;

  @override
  Widget build(BuildContext context) {
    return LeftThumbnailCard(
        name: event.name,
        description: event.description,
        isFullScreen: false,
        imageUrl: event.images[0],
        onPress: () => {
              Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: {"data": event, "type": 1})
            });
  }
}
