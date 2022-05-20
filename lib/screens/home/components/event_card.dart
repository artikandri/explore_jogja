import 'package:flutter/material.dart';
import 'package:jogja/components/custom_network_image.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/models/event.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    required this.event,
  }) : super(key: key);

  final double width, aspectRatio;
  final Event event;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(width),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          DetailScreen.routeName,
          arguments: {
            "data": event,
            "type": 0,
          },
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(event.images[0]),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              event.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(14)),
              maxLines: 1,
            ),
            const SizedBox(height: 5),
            Text(
              event.place.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: AppColors.kDarkGray,
                  fontSize: getProportionateScreenWidth(12)),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
