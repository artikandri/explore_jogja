import 'package:flutter/material.dart';
import 'package:jogja/models/size_config.dart';
import 'package:jogja/components/custom_searchbox.dart';
import 'package:jogja/components/custom_back_button.dart';

import 'item_list.dart';

class Body extends StatefulWidget {
  final String title;
  final List<dynamic> items;
  final int type;

  const Body(
      {Key? key, required this.items, required this.type, required this.title})
      : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String title = "";
  List items = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      items = widget.items;
      title = widget.title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomBackButton(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title.toString(),
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 12, 0, 0),
                  ),
                ),
              ),
            ),
            CustomSearchBox(
                readOnly: false,
                autoFocus: true,
                onChanged: (text) {
                  setState(() {
                    if (text.isNotEmpty) {
                      items = widget.items
                          .where((element) => element.name
                              .toLowerCase()
                              .contains(text.toLowerCase()))
                          .toList();
                    } else {
                      items = widget.items;
                    }
                  });
                }),
            SizedBox(height: getProportionateScreenHeight(10)),
            ItemList(items: items, limit: 0, type: widget.type)
          ],
        ),
      ),
    );
  }
}
