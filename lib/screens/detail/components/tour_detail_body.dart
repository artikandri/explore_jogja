import 'package:flutter/material.dart';
import 'package:jogja/models/size_config.dart';
import 'package:jogja/components/custom_map.dart';
import 'package:jogja/screens/detail/components/description.dart';
import 'package:jogja/screens/detail/components/top_container.dart';
import 'package:jogja/screens/detail/components/images_list.dart';

class TourDetailBody extends StatelessWidget {
  dynamic data;
  TourDetailBody({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> _locations =
        data.places.map((place) => place.location).toList();

    return ListView(
      children: [
        data.images.length > 0 ? ImagesList(images: data.images) : Container(),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              Description(
                name: data.name,
                description: data.description,
              ),
              Container(
                  width: 300,
                  height: 100,
                  child: CustomMap(locations: _locations)),
              TopRoundedContainer(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
