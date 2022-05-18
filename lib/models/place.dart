import 'package:jogja/models/location.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final Location location;
  final List<String> images;
  final String video;
  int type = 0;
  List? reviews = [];

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.images,
    required this.video,
    this.reviews,
  });
}
