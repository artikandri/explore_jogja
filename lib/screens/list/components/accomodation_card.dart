import 'package:flutter/material.dart';
import 'package:jogja/components/custom_network_image.dart';
import 'package:jogja/screens/detail/detail_screen.dart';
import 'package:jogja/models/accomodation.dart';
import 'package:jogja/stylings/index.dart';

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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, DetailScreen.routeName,
              arguments: {"data": accomodation, "type": 2}),
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
                    tag: accomodation.name,
                    child: CustomNetworkImage(url: accomodation.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                accomodation.name,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${accomodation.price} zl",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
