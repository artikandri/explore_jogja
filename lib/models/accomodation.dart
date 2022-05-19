import 'package:jogja/models/location.dart';

class Accomodation {
  final int id;
  final String name;
  final String description;
  final Location location;
  final List<String> images;
  double? price;
  List? reviews;

  Accomodation({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.images,
    this.price,
    this.reviews,
  });
}
