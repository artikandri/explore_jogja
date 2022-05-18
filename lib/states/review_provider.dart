import 'package:flutter/material.dart';

class ReviewProvider extends ChangeNotifier {
  String _reviewerName = "";
  String _reviewContent = "";
  double _rating = 0.0;

  String get reviewerName => _reviewerName;
  String get reviewContent => _reviewContent;
  double get rating => _rating;
}
