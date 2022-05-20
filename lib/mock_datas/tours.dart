import 'package:jogja/models/tour.dart';
import 'places.dart';

final List<Tour> kTours = [
  Tour(
    name: 'Check out the city',
    description: 'Go out and check out the beautiful places',
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/3/3d/Jogjakarta%2C_January_2007.jpg',
      'https://thumbs.dreamstime.com/z/podwy%C5%BCszona-platforma-sumur-gumuling-taman-sari-wody-meczetowy-kasztel-55213406.jpg'
    ],
    places: [kPlaces[1], kPlaces[2]],
  ),
  Tour(
    name: 'Play along',
    description: 'Stroll around the city with your friends',
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/3/3d/Jogjakarta%2C_January_2007.jpg',
      'https://thumbs.dreamstime.com/z/podwy%C5%BCszona-platforma-sumur-gumuling-taman-sari-wody-meczetowy-kasztel-55213406.jpg'
    ],
    places: [kPlaces[3], kPlaces[4], kPlaces[1]],
  ),
  Tour(
    name: 'Why stay in hotel?',
    description: 'Explore the city. What are you doing here?',
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/3/3d/Jogjakarta%2C_January_2007.jpg',
      'https://thumbs.dreamstime.com/z/podwy%C5%BCszona-platforma-sumur-gumuling-taman-sari-wody-meczetowy-kasztel-55213406.jpg'
    ],
    places: [kPlaces[3], kPlaces[1], kPlaces[2], kPlaces[4], kPlaces[0]],
  ),
];
