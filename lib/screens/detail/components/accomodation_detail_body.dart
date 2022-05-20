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
  List? reviews;
  AccomodationDetailBody({Key? key, required this.data}) : super(key: key);

  void _showContent(BuildContext context, dynamic data) {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add review'),
          content: SingleChildScrollView(
              child: AddReviewScreen(data: data, type: 2)),
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
                name: data.name,
                description: data.description,
              ),
              Text(data.price.toString()),
              Container(
                  width: 300,
                  height: 100,
                  child: CustomMap(locations: [data.location])),
              Text(data.location.address),
              FlatButton(
                onPressed: () {
                  _showContent(context, data);
                },
                color: Color.fromARGB(255, 161, 171, 187),
                child:
                    const Text('Review', style: TextStyle(color: Colors.white)),
              ),
              ReviewList(reviews: reviews, type: 2, id: data.id),
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
