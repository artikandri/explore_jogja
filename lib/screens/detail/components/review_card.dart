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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                Text(
                  review.rating.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(12)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              review.comment,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(12)),
            ),
          ],
        ),
      ),
    );
  }
}
