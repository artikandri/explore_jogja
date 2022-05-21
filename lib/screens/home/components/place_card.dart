import 'package:flutter/material.dart';
import 'package:jogja/components/overlay_card.dart';
import 'package:jogja/models/place.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    required this.place,
  }) : super(key: key);

  final double width, aspectRatio;
  final Place place;

  @override
  Widget build(BuildContext context) {
    return OverlayCard(
        imageUrl: place.images[0],
        name: place.name,
        description: place.description,
        onPress: () => {
              Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: {"data": place, "type": 0})
            });
  }
}
