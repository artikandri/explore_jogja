import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:jogja/screens/detail/components/review_card.dart';
import 'package:jogja/providers/review_provider.dart';

class ReviewList extends StatelessWidget {
  final List? reviews;
  final int type;
  final int id;

  const ReviewList(
      {Key? key, required this.reviews, required this.type, required this.id})
      : super(key: key);

  List getReviews(context) {
    List providerReviews = Provider.of<ReviewProvider>(context, listen: true)
        .getReviewsWithType(type);
    List combinedReviews = [...reviews ?? [], ...providerReviews];
    return combinedReviews;
  }

  @override
  Widget build(BuildContext buildContext) {
    List combinedReviews = getReviews(buildContext);
    List filteredReviews =
        combinedReviews.where((review) => review.id == id).toList();
    double averageRating =
        Provider.of<ReviewProvider>(buildContext, listen: true)
            .getRatingAverage(filteredReviews);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Text("Reviews (${filteredReviews.length})"),
          Text(averageRating.toString()),
          ...List.generate(filteredReviews.length,
              (index) => ReviewCard(review: filteredReviews[index])),
        ],
      ),
    );
  }
}
