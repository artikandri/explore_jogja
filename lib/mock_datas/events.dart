import 'package:jogja/models/event.dart';
import 'places.dart';

final List<Event> kEvents = [
  Event(
    name: 'Jogja Now',
    description: 'Visit these awesome places and get rewards!',
    place: kPlaces[0],
    images: [
      'https://pix10.agoda.net/hotelImages/161777/-1/c11de39d15f10e9e43b3ab409c62b48a.png?ca=21&ce=0&s=1024x768',
      'https://exp.cdn-hotels.com/hotels/1000000/530000/523700/523641/fc0c3d70_z.jpg?impolicy=fcrop&w=500&h=333&q=medium'
    ],
    startTime: "2020-01-02 08:00",
    endTime: "2020-01-02 10:00",
  ),
  Event(
    name: 'Carnival Jogja',
    description: 'Look around the carnival in Jogja',
    place: kPlaces[2],
    images: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/7a/a3/59/grand-dafam-rohan-jogja.jpg?w=900&h=-1&s=1',
      'https://www.kayak.com/rimg/himg/81/50/1a/hotelsdotcom-652869696-09b9add0_w-032285.jpg?width=1366&height=768&crop=true'
    ],
    startTime: "2020-01-02 08:00",
    endTime: "2020-01-02 10:00",
  ),
  Event(
    name: 'Jogja Culinary Festival',
    description: 'Eat to your hearts content',
    place: kPlaces[1],
    images: [
      'https://pix10.agoda.net/hotelImages/161777/-1/c11de39d15f10e9e43b3ab409c62b48a.png?ca=21&ce=0&s=1024x768',
      'https://exp.cdn-hotels.com/hotels/1000000/530000/523700/523641/fc0c3d70_z.jpg?impolicy=fcrop&w=500&h=333&q=medium'
    ],
    startTime: "2020-01-02 08:00",
    endTime: "2020-01-02 10:00",
  ),
];
