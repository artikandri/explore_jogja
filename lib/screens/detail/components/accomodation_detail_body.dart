import 'package:flutter/material.dart';
import 'package:jogja/models/size_config.dart';
import 'package:jogja/components/custom_map.dart';
import 'package:jogja/components/custom_youtube_view.dart';
import 'package:jogja/screens/detail/components/description.dart';
import 'package:jogja/screens/detail/components/top_container.dart';
import 'package:jogja/screens/detail/components/images_list.dart';

class AccomodationDetailBody extends StatelessWidget {
  dynamic data;

  AccomodationDetailBody({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              Text(data.price.toString()),
              Container(
                  width: 300,
                  height: 100,
                  child: CustomMap(locations: [data.location])),
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
