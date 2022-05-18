import 'package:jogja/models/tour.dart';
import 'places.dart';

final List<Tour> kTours = [
  Tour(
    name: 'Check out the city',
    description: 'Go out and check out the beautiful places',
    places: [
      kPlaces[1],
      kPlaces[2]
    ],
  ),
  Tour(
    name: 'Play along',
    description: 'Stroll around the city with your friends',
    places: [
      kPlaces[3],
      kPlaces[4],
      kPlaces[1]
    ],
  ),
  Tour(
    name: 'Why stay in hotel?',
    description: 'Explore the city. What are you doing here?',
    places: [
      kPlaces[3],
      kPlaces[1],
      kPlaces[2],
      kPlaces[4],
      kPlaces[0]
    ],
  ),
];
