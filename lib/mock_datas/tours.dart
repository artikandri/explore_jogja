import 'package:jogja/models/tour.dart';
import 'places.dart';

final List<Tour> kTours = [
  Tour(
    name: 'Check out the city',
    description: 'Go out and check out the beautiful places',
    images: [
      'https://eventyogyakarta.id/wp-content/uploads/2020/03/AP-JOGJA-FASHION-WEEK-2020-Copy.jpg',
      'https://visitingjogja.jogjaprov.go.id/web/wp-content/uploads/2020/04/WhatsApp-Image-2020-04-18-at-10.01.44.jpeg'
    ],
    places: [kPlaces[1], kPlaces[2]],
  ),
  Tour(
    name: 'Play along',
    description: 'Stroll around the city with your friends',
    images: [
      'https://eventyogyakarta.id/wp-content/uploads/2020/03/AP-JOGJA-FASHION-WEEK-2020-Copy.jpg',
      'https://visitingjogja.jogjaprov.go.id/web/wp-content/uploads/2020/04/WhatsApp-Image-2020-04-18-at-10.01.44.jpeg'
    ],
    places: [kPlaces[3], kPlaces[4], kPlaces[1]],
  ),
  Tour(
    name: 'Why stay in hotel?',
    description: 'Explore the city. What are you doing here?',
    images: [
      'https://eventyogyakarta.id/wp-content/uploads/2020/03/AP-JOGJA-FASHION-WEEK-2020-Copy.jpg',
      'https://visitingjogja.jogjaprov.go.id/web/wp-content/uploads/2020/04/WhatsApp-Image-2020-04-18-at-10.01.44.jpeg'
    ],
    places: [kPlaces[3], kPlaces[1], kPlaces[2], kPlaces[4], kPlaces[0]],
  ),
];
