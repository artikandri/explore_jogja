import 'package:jogja/models/location.dart';

class Place {
  final String name;
  final String description;
  final Location location;
  final List<String> images;
  final String video;

  const Place({
    required this.name,
    required this.description,
    required this.location,
    required this.images,
    required this.video,
  });
}
