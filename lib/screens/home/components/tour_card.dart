import 'package:flutter/material.dart';
import 'package:jogja/models/tour.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/overlay_card.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

class TourCard extends StatelessWidget {
  const TourCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    required this.tour,
  }) : super(key: key);

  final double width, aspectRatio;
  final Tour tour;

  @override
  Widget build(BuildContext context) {
    return OverlayCard(
        imageUrl: tour.images[0],
        name: tour.name,
        description: tour.description,
        onPress: () => {
              Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: {"data": tour, "type": 3})
            });
  }
}
