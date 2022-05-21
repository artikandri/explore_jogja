import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_map.dart';
import 'package:jogja/screens/detail/components/description.dart';
import 'package:jogja/screens/detail/components/top_container.dart';
import 'package:jogja/screens/detail/components/images_list.dart';
import 'package:jogja/components/icon_with_text.dart';
import 'package:jogja/screens/detail/detail_screen.dart';

class EventDetailBody extends StatelessWidget {
  dynamic data;
  EventDetailBody({Key? key, required this.data}) : super(key: key);

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
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(10),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconWithText(
                                  icon:
                                      const Icon(Icons.location_city_outlined),
                                  text: data.place.name),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Text(data.place.description,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          getProportionateScreenWidth(12))),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                            ],
                          )),
                    ],
                  )),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: IconWithText(
                      icon: const Icon(Icons.map_outlined),
                      text: data.place.location.address)),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: CustomMap(locations: [data.place.location])),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
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
