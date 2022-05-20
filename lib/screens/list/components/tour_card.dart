import 'package:flutter/material.dart';
import 'package:jogja/components/custom_network_image.dart';
import 'package:jogja/models/tour.dart';
import 'package:jogja/stylings/index.dart';
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
                    color: AppColors.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Hero(
                    tag: tour.name,
                    child: CustomNetworkImage(url: tour.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                tour.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
