import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:jogja/providers/review_provider.dart';
import 'package:jogja/stylings/index.dart';
import 'package:jogja/models/review.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddReviewScreen extends StatefulWidget {
  final dynamic data;
  final int type;
  const AddReviewScreen({Key? key, required this.data, required this.type})
      : super(key: key);

  @override
  _AddReviewScreenState createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  String? _description = "";
  double _ratingValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  void _saveData(Map<String, dynamic> value, BuildContext context, dynamic data,
      int type) {
    dynamic review = PlaceReview(
        objectName: data.name,
        rating: _ratingValue,
        type: 0,
        comment: value["description"] ?? "",
        id: data.id);

    if (type == 2) {
      review = AccomodationReview(
          objectName: data.name,
          rating: _ratingValue,
          type: 2,
          comment: value["description"] ?? "",
          id: data.id);
    }

    Provider.of<ReviewProvider>(context, listen: false).addReview(review);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 300,
        width: 600,
        child: Column(children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FormBuilder(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          RatingBar(
                              initialRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star,
                                      color: Colors.orange),
                                  half: const Icon(
                                    Icons.star_half,
                                    color: Colors.orange,
                                  ),
                                  empty: const Icon(
                                    Icons.star_outline,
                                    color: Colors.orange,
                                  )),
                              onRatingUpdate: (value) {
                                setState(() {
                                  _ratingValue = value;
                                });
                              }),
                          SizedBox(height: 20),
                          FormBuilderTextField(
                            name: 'description',
                            decoration: const InputDecoration(
                              labelText: 'Review',
                            ),
                            onChanged: (value) {
                              setState(() {
                                _description = value;
                              });
                            },
                            validator: FormBuilderValidators.compose([]),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          )),
          Container(
            width: 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      _saveData(_formKey.currentState!.value, context,
                          widget.data, widget.type);
                    } else {
                      var snackBar =
                          SnackBar(content: Text('Validation failed'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    height: 50,
                    child: const Text(
                      'Add review',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    decoration: BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
