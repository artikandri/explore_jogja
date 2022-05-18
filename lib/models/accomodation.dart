import 'package:jogja/models/location.dart';

class Accomodation {
  final String name;
  final String description;
  final Location location;
  final List<String> images;
  final double price;

  const Accomodation({
    required this.name,
    required this.description,
    required this.location,
    required this.images,
    required this.price,
  });
}
