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
  final int id;
  final int type;

  const PlaceReview({
    required String objectName,
    required double rating,
    required String comment,
    required this.id,
    required this.type,
  }) : super(objectName: objectName, rating: rating, comment: comment);
}

class AccomodationReview extends Review {
  final int id;
  final int type;

  const AccomodationReview({
    required String objectName,
    required double rating,
    required String comment,
    required this.id,
    required this.type,
  }) : super(objectName: objectName, rating: rating, comment: comment);
}
