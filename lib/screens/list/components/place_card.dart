import 'package:flutter/material.dart';
import 'package:jogja/components/custom_network_image.dart';
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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailScreen.routeName,
            arguments: {
              "data": place,
              "type": 0,
            },
          ),
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
                    tag: place.name,
                    child: CustomNetworkImage(url: place.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                place.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
