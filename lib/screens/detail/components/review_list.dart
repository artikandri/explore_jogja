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

  List? getReviews(context) {
    List providerReviews =
        Provider.of<ReviewProvider>(context, listen: true).getReviews();
    List combinedReviews = [...reviews ?? [], ...providerReviews];
    return combinedReviews;
  }

  @override
  Widget build(BuildContext buildContext) {
    List? combinedReviews = getReviews(buildContext) ?? [];
    List? filteredReviews = combinedReviews
        .where((review) => review.type == type && review.id == id)
        .toList();
    print(filteredReviews);
    double averageRating =
        Provider.of<ReviewProvider>(buildContext, listen: true)
            .getRatingAverage(combinedReviews);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Text("Reviews (${combinedReviews.length})"),
          Text(averageRating.toString()),
          ...List.generate(combinedReviews.length,
              (index) => ReviewCard(review: combinedReviews[index])),
        ],
      ),
    );
  }
}
