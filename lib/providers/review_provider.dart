import 'package:flutter/material.dart';
import 'package:jogja/models/review.dart';
import 'package:jogja/helpers/shared_prefs_helper.dart';

class ReviewProvider extends ChangeNotifier {
  List reviews = [];

  ReviewProvider() {
    getReviews();
  }

  int getRatingAverage() {
    if (reviews.isEmpty) return 0;
    double sum = 0;
    for (var review in reviews) {
      sum += review?.rating;
    }
    return sum ~/ reviews.length;
  }

  void getReviews() {
    SharedPrefsHelper().getData('reviews').then((value) {
      reviews = value;
    });
    notifyListeners();
  }

  void addReview(Review review) {
    reviews.add(review);
    SharedPrefsHelper().setData('reviews', reviews);
    notifyListeners();
  }
}
