import 'package:flutter/material.dart';
import 'package:jogja/helpers/shared_prefs_helper.dart';

class ReviewProvider extends ChangeNotifier {
  List reviews = [];

  ReviewProvider() {
    getReviews();
  }

  void setReviews(value) {
    reviews = value;
    SharedPrefsHelper().setData('reviews', value);
    notifyListeners();
  }

  double getRatingAverage(List allReviews) {
    if (allReviews.isEmpty) return 0;
    double sum = 0;
    for (var review in allReviews) {
      sum += review?.rating;
    }
    return sum / allReviews.length;
  }

  List getReviews() {
    SharedPrefsHelper().getData('reviews').then((value) {
      reviews = value;
    });
    notifyListeners();
    return reviews;
  }

  List getReviewsWithType(int type) {
    notifyListeners();
    return reviews.where((element) {
      return element.type == type;
    }).toList();
  }

  void addReview(dynamic review) {
    reviews.add(review);
    setReviews(reviews);
    notifyListeners();
  }
}
