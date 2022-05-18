import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jogja/models/constants.dart';
import 'package:jogja/models/review.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

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

  void _saveData() {}

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kGray,
        body: SafeArea(
            child: Column(children: <Widget>[
          const Text(
            'Add review',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Expanded(
              child: SingleChildScrollView(
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
          SizedBox(
            height: 80,
            width: width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      _saveData(_formKey!.currentState!.value, context);
                    } else {
                      var snackBar =
                          SnackBar(content: Text('Validation failed'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    child: const Text(
                      'Create Event',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    width: width - 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                )
              ],
            ),
          ),
        ])));
  }
}
