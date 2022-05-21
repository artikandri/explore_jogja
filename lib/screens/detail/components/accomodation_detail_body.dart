import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/components/custom_map.dart';
import 'package:jogja/screens/detail/components/description.dart';
import 'package:jogja/screens/detail/components/top_container.dart';
import 'package:jogja/screens/detail/components/images_list.dart';
import 'package:jogja/screens/detail/components/review_list.dart';
import 'package:jogja/screens/add_review/add_review_screen.dart';

class AccomodationDetailBody extends StatelessWidget {
  dynamic data;
  AccomodationDetailBody({Key? key, required this.data}) : super(key: key);

  void _showContent(BuildContext context, dynamic data) {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add review'),
          content: SingleChildScrollView(
              child: AddReviewScreen(data: data, type: 0)),
        );
      },
    );
  }

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
                name: '${data.name} (${data.price} zl)',
                description: data.description,
              ),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(children: [
                      Icon(Icons.location_city),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(data.location.address,
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(12)))
                    ]),
                  )),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: CustomMap(locations: [data.location])),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.kPrimaryColor,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {
                      _showContent(context, data);
                    },
                    child: const Text(
                      'Add review',
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
              SizedBox(
                height: getProportionateScreenHeight(100),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child:
                      ReviewList(reviews: data.reviews, type: 0, id: data.id)),
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
