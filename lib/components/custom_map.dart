import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMap extends StatefulWidget {
  final List<dynamic> locations;

  const CustomMap({Key? key, required this.locations}) : super(key: key);

  @override
  State<CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  final PolylinePoints _polylinePoints = PolylinePoints();
  final List<LatLng> _routePoints = [];
  final Set<Polyline> _polylines = <Polyline>{};
  final LatLng _center = const LatLng(-7, 110);

  void _onMapCreated(controller) async {
    for (int i = 0; i < widget.locations.length - 1; i++) {
      PolylineResult result = await _polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyBxaYoHu3Qlg74RPIhJ0T-UUAic6vUkdGU",
        PointLatLng(
          widget.locations[i].latitude,
          widget.locations[i].longitude,
        ),
        PointLatLng(
          widget.locations[i + 1].latitude,
          widget.locations[i + 1].longitude,
        ),
      );
      if (result.status == 'OK') {
        for (var point in result.points) {
          _routePoints.add(LatLng(point.latitude, point.longitude));
        }
      }
    }
    setState(() {
      _polylines.add(
        Polyline(
          width: 8,
          polylineId: const PolylineId('tour'),
          color: Colors.cyan,
          points: _routePoints,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: widget.locations.length != 1
            ? _center
            : LatLng(widget.locations.first.latitude,
                widget.locations.first.longitude),
        zoom: 15.0,
      ),
      markers: Set.from(
        widget.locations.map(
          (location) => Marker(
            icon:
                BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
            markerId: MarkerId('${location.latitude}, ${location.longitude}'),
            position: LatLng(location.latitude, location.longitude),
          ),
        ),
      ),
      polylines: _polylines,
    );
  }
}
