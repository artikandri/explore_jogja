class Review {
  final String objectName;
  final double rating;
  final String comment;

  const Review({
    required this.objectName,
    required this.rating,
    required this.comment,
  });
}

class PlaceReview extends Review {
  const PlaceReview({
    required String objectName,
    required double rating,
    required String comment,
    required int id,
    int type = 0,
  }) : super(objectName: objectName, rating: rating, comment: comment);
}

class AccomodationReview extends Review {
  const AccomodationReview({
    required String objectName,
    required double rating,
    required String comment,
    required int id,
    int type = 2,
  }) : super(objectName: objectName, rating: rating, comment: comment);
}
