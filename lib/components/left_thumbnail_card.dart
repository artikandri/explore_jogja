import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';

class LeftThumbnailCard extends StatelessWidget {
  const LeftThumbnailCard(
      {Key? key,
      this.width = 180,
      this.aspectRatio = 1.02,
      this.isFullScreen = false,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.onPress})
      : super(key: key);

  final double width, aspectRatio;
  final String name, description, imageUrl;
  final Function onPress;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
        width: isFullScreen
            ? MediaQuery.of(context).size.width
            : getProportionateScreenWidth(200),
        decoration: BoxDecoration(
          color: AppColors.kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () => {onPress()},
              child: Row(children: [
                SizedBox(
                    width: getProportionateScreenWidth(isFullScreen ? 100 : 50),
                    height: getProportionateScreenHeight(100),
                    child: Image.network(imageUrl,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width)),
                SizedBox(width: getProportionateScreenWidth(10)),
                Container(
                    width:
                        getProportionateScreenWidth(isFullScreen ? 200 : 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize:
                                        getProportionateScreenWidth(12)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(description,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize:
                                        getProportionateScreenWidth(10)))),
                      ],
                    ))
              ]),
            ),
          ],
        ));
  }
}
