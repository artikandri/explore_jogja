import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_map.dart';
import 'package:jogja/components/custom_timeline.dart';
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
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: CustomTimeline(
                  padding: const EdgeInsets.all(4),
                  itemGap: getProportionateScreenHeight(12),
                  children: <Widget>[
                    ...List.generate(
                        data.places.length,
                        (index) => Container(
                            width: MediaQuery.of(context).size.width,
                            color: AppColors.kLightGray,
                            child: Description(
                              name: data.places[index].name,
                              description: data.places[index].description,
                              isMicHidden: true,
                            )))
                  ],
                  indicators: <Widget>[
                    ...List.generate(
                        data.places.length, (index) => Icon(Icons.room)),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: CustomMap(locations: _locations)),
              ),
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
