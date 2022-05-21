import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';

class OverlayCard extends StatelessWidget {
  const OverlayCard({
    Key? key,
    this.width = 180,
    this.aspectRatio = 1.02,
    this.isFullScreen = false,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRatio;
  final String name, description, imageUrl;
  final Function onPress;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => {onPress()},
        child: SizedBox(
          width: isFullScreen
              ? MediaQuery.of(context).size.width
              : getProportionateScreenWidth(200),
          height: getProportionateScreenWidth(140),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.network(imageUrl,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(20),
                  ),
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(50),
                  ),
                  child: Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
