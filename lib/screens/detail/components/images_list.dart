import 'package:flutter/material.dart';
import 'package:jogja/constants.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_network_image.dart';

class ImagesList extends StatefulWidget {
  const ImagesList({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  _ImagesListState createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.images.toString(),
              child: CustomNetworkImage(url: widget.images[selectedImage]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.images.length, (index) => ImagePreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector ImagePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: AppColors.kPrimaryColor
                  .withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: CustomNetworkImage(url: widget.images[index]),
      ),
    );
  }
}
