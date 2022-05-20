import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:jogja/models/event.dart';
import 'package:jogja/stylings/index.dart';
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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailScreen.routeName,
            arguments: {
              "data": event,
              "type": 1,
            },
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: AppColors.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Hero(
                    tag: event.name,
                    child: CachedNetworkImage(
                      imageUrl: event.images[0],
                      placeholder: (context, url) =>
                          new CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          new Icon(Icons.error),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                event.name,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
