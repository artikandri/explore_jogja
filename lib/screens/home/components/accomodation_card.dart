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
    return Container(
        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
        height: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: AppColors.kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                DetailScreen.routeName,
                arguments: {
                  "data": accomodation,
                  "type": 0,
                },
              ),
              child: Row(children: [
                Container(
                  width: getProportionateScreenWidth(100),
                  child: Wrap(
                    children: [CustomNetworkImage(url: accomodation.images[0])],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                Container(
                    width: getProportionateScreenWidth(100),
                    child: Wrap(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(accomodation.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(12)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(accomodation.description,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10)))),
                          ],
                        )
                      ],
                    ))
              ]),
            ),
          ],
        ));
  }
}
