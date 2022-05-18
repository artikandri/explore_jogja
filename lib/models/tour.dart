import 'package:jogja/models/place.dart';

class Tour {
  final String name;
  final String description;
  final List<Place> places;
  final List images;

  const Tour({
    required this.name,
    required this.description,
    required this.places,
    required this.images,
  });
}
