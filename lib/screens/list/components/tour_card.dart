// ignore_for_file: avoid_web_libraries_in_flutter, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:jogja/models/constants.dart';
import 'package:jogja/models/tour.dart';
import 'package:jogja/models/size_config.dart';
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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, DetailScreen.routeName,
              arguments: {"data": tour, "type": 3}),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Hero(
                    tag: tour.name,
                    child: CachedNetworkImage(
                      imageUrl: tour.images[0],
                      placeholder: (context, url) =>
                          new CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          new Icon(Icons.error),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                tour.name,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
