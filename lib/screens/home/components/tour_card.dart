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
    return SizedBox(
      width: getProportionateScreenWidth(width),
      child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, DetailScreen.routeName,
              arguments: {"data": tour, "type": 3}),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 10,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    foregroundDecoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.kBlack,
                          Colors.transparent,
                          Colors.transparent,
                          AppColors.kBlack
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0.8, 0.8, 1],
                      ),
                    ),
                    child: CustomNetworkImage(url: tour.images[0]),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14.0,
                        vertical: 20,
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tour.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kWhite),
                            ),
                            Text(
                              tour.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(12),
                                  color: AppColors.kWhite),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
