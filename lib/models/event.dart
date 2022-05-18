import 'package:jogja/models/place.dart';

class Event {
  final String name;
  final String description;
  final Place place;
  List<String> images = [];
  String? startTime;
  String? endTime;

  Event(
      {required this.name,
      required this.description,
      required this.place,
      required this.images,
      this.startTime,
      this.endTime});
}
