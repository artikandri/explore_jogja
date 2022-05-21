import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/left_thumbnail_card.dart';
import 'package:jogja/models/accomodation.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

class AccomodationCard extends StatelessWidget {
  const AccomodationCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    required this.accomodation,
  }) : super(key: key);

  final double width, aspectRatio;
  final Accomodation accomodation;

  @override
  Widget build(BuildContext context) {
    return LeftThumbnailCard(
        name: accomodation.name,
        description: accomodation.description,
        imageUrl: accomodation.images[0],
        onPress: () => {
              Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: {"data": accomodation, "type": 2})
            });
  }
}
