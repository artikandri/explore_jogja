import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_network_image.dart';
import 'package:jogja/models/place.dart';
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
                  "data": place,
                  "type": 0,
                },
              ),
              child: Row(children: [
                Container(
                  width: getProportionateScreenWidth(100),
                  child: Wrap(
                    children: [CustomNetworkImage(url: place.images[0])],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                Container(
                    width: getProportionateScreenWidth(100),
                    child: Wrap(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(place.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(12)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(place.description,
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
