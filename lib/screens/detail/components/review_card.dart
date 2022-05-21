import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jogja/stylings/index.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    required this.review,
  }) : super(key: key);

  final double width, aspectRatio;
  final dynamic review;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: review.rating,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(
                        review.rating.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(10)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      review.comment,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(10)),
                    )),
              ],
            ),
          )),
    );
  }
}
