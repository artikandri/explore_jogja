import 'package:jogja/models/event.dart';
import 'places.dart';

final List<Event> kEvents = [
  Event(
    name: 'Jogja Now',
    description: 'Visit these awesome places and get rewards!',
    place: kPlaces[0],
    images: [
      'https://eventyogyakarta.id/wp-content/uploads/2020/03/AP-JOGJA-FASHION-WEEK-2020-Copy.jpg',
      'https://visitingjogja.jogjaprov.go.id/web/wp-content/uploads/2020/04/WhatsApp-Image-2020-04-18-at-10.01.44.jpeg'
    ],
  ),
  Event(
    name: 'Carnival Jogja',
    description: 'Look around the carnival in Jogja',
    place: kPlaces[2],
    images: [
      'https://hanatourjogja.com/cni-content/uploads/modules/posts/20191031113840.jpg'
    ],
  ),
  Event(
    name: 'Jogja Culinary Festival',
    description: 'Eat to your hearts content',
    place: kPlaces[1],
    images: [
      'https://jadwalevent.web.id/wp-content/uploads/2020/01/Jogja-Culinary-Festival.jpg'
    ],
  ),
];
