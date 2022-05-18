import 'package:jogja/models/location.dart';
import 'package:jogja/models/place.dart';

const List<Place> kPlaces = [
  Place(
    name: 'Taman Sari',
    description: 'Architecturally ornate, 18th-century former royal garden with a storied bathing complex.',
    location: Location(
      latitude: -7.100821020718915,
      longitude: 110.3164988721451,
      label: 'Taman Sari',
    ),
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/3/3d/Jogjakarta%2C_January_2007.jpg',
      'https://thumbs.dreamstime.com/z/podwy%C5%BCszona-platforma-sumur-gumuling-taman-sari-wody-meczetowy-kasztel-55213406.jpg'
    ],
    video: 'https://www.youtube.com/watch?v=vC1F2BJwsRQ',
  ),
  Place(
    name: 'Malioboro',
    description: 'Malioboro is the most famous street in Yogyakarta. Located in the heart of the city, this is the main street and was once the ceremonial avenue',
    location: Location(
      latitude: -7.792348884666447,
      longitude: 110.3659064849999,
      label: 'Malioboro',
    ),
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/f/f0/Malioboro_Street%2C_Yogyakarta.JPG',
      'https://yukngetrip.com/wp-content/uploads/2020/10/jalan-malioboro.jpg'
    ],
    video: 'https://www.youtube.com/watch?v=RBQCMwRJR9o',
  ),
  Place(
    name: 'The Palace of Yogyakarta',
    description: 'Built in the 18th century, this grand palace is still used by Indonesian royalty.',
    location: Location(
      latitude: -7.81609934,
      longitude: 110.33015461,
      label: 'The Palace of Yogyakarta',
    ),
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/3/33/Kraton_Yogyakarta_Pagelaran.jpg',
      'https://thumbs.dreamstime.com/b/kraton-sultan-palace-yogyakarta-main-gate-to-kraton-sultan-palace-yogyarta-city-biggest-kraton-java-island-121576337.jpg'
    ],
    video: 'https://www.youtube.com/watch?v=RBQCMwRJR9o',
  ),
  Place(
    name: 'Fort Vredeburg Museum',
    description: 'Colonial fortress-turned-museum with history exhibits on Indonesias struggle for independence.',
    location: Location(
      latitude: -7.100821020718915,
      longitude: 110.3164988721451,
      label: 'Fort Vredeburg Museum',
    ),
    images: [
      'https://balistarisland.com/wp-content/uploads/2016/09/fortvredeburgmuseum.jpg'
    ],
    video: 'https://www.youtube.com/watch?v=Qm8A_XsyUX0',
  ),
  Place(
    name: 'Tugu',
    description: 'Tugu Yogyakarta is an important historical landmark in the city of Yogyakarta, Indonesia. Tugu means monument, which is usually built as a symbol of an area conceptualising characteristics of that region. Because of its historical background, Tugu Yogyakarta has become a historical icon of the city. ',
    location: Location(
      latitude: -7.782984,
      longitude: 110.367035,
      label: 'Tugu',
    ),
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Yogyakarta_Indonesia_Tugu-Yogyakarta-01.jpg/1200px-Yogyakarta_Indonesia_Tugu-Yogyakarta-01.jpg',
      'https://factsofindonesia.com/wp-content/uploads/2017/11/Tugu-Yogyakarta-1280x720.jpg'
    ],
    video: 'https://www.youtube.com/watch?v=tbBOeZz-4T4',
  ),
];
