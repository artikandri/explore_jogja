class Location {
  final double latitude;
  final double longitude;
  final String label;
  String? address;

  Location({
    required this.latitude,
    required this.longitude,
    required this.label,
    this.address,
  });
}
