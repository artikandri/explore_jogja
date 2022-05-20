import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_network_image.dart';
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
    return SizedBox(
      width: getProportionateScreenWidth(width),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          DetailScreen.routeName,
          arguments: {
            "data": accomodation,
            "type": 0,
          },
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 80.0,
                child: Wrap(
                  children: [CustomNetworkImage(url: accomodation.images[0])],
                )),
            const SizedBox(height: 20),
            Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      accomodation.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14)),
                      maxLines: 1,
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      accomodation.price.toString() + " zl",
                      style: TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontSize: getProportionateScreenWidth(12)),
                      maxLines: 2,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
