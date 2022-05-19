import 'package:jogja/models/location.dart';
import 'package:jogja/models/accomodation.dart';
import 'package:jogja/models/review.dart';

List<Accomodation> kAccomodations = [
  Accomodation(
      id: 30,
      name: 'Hotel Santika Premiere Jogja',
      description:
          'Upscale hotel with a spa, an outdoor pool & 2 restaurants, plus a coffee shop & free breakfast.',
      location: Location(
        latitude: -7.782497,
        longitude: 110.3697302,
        address: "Jalan Kemakmuran",
        label: 'Hotel Santika Premiere Jogja',
      ),
      images: [
        'https://pix10.agoda.net/hotelImages/161777/-1/c11de39d15f10e9e43b3ab409c62b48a.png?ca=21&ce=0&s=1024x768',
        'https://exp.cdn-hotels.com/hotels/1000000/530000/523700/523641/fc0c3d70_z.jpg?impolicy=fcrop&w=500&h=333&q=medium'
      ],
      price: 200,
      reviews: [
        const AccomodationReview(
            objectName: "Hotel Santika Premiere Jogja",
            rating: 4.0,
            type: 2,
            comment: "beautiful place",
            id: 30),
        const AccomodationReview(
            objectName: "Hotel Santika Premiere Jogja",
            rating: 4.0,
            type: 2,
            comment: "nice to visit",
            id: 30)
      ]),
  Accomodation(
      id: 20,
      name: 'Grand Rohan Jogja',
      description:
          'Simple rooms & airy suites in a relaxed hotel offering dining, a ballroom & an outdoor pool.',
      location: Location(
        latitude: -7.782497,
        longitude: 110.3697302,
        address: "Jalan Kemakmuran",
        label: 'Grand Rohan Jogja',
      ),
      images: [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/7a/a3/59/grand-dafam-rohan-jogja.jpg?w=900&h=-1&s=1',
        'https://www.kayak.com/rimg/himg/81/50/1a/hotelsdotcom-652869696-09b9add0_w-032285.jpg?width=1366&height=768&crop=true'
      ],
      price: 100,
      reviews: []),
  Accomodation(
      id: 10,
      name: 'Greenhost Boutique Hotel Prawirotaman',
      description:
          'Modern rooms in a trendy eco-centric hotel with hydroponic farm-to-table dining, a spa & a pool.',
      location: Location(
        latitude: -7.782497,
        longitude: 110.3697302,
        address: "Jalan Tumpah tumpah",
        label: 'Greenhost Boutique Hotel Prawirotaman',
      ),
      images: [
        'https://pix10.agoda.net/hotelImages/3155660/-1/f7324019939936504c77e3924e206f4f.jpg?ca=9&ce=1&s=1024x768',
        'https://www.ahstatic.com/photos/5451_ho_00_p_1024x768.jpg'
      ],
      price: 50,
      reviews: []),
];
