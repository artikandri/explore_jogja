import 'package:flutter/material.dart';
import 'package:jogja/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  List items;
  int type = 0;
  int limit = 3;

  ItemList(
      {Key? key, required this.items, required this.type, required this.limit})
      : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ...List.generate(
            limit == 0 ? items.length : limit,
            (index) => ItemCard(
              type: type,
              data: items[index],
            ),
          ),
        ],
      ),
    );
  }
}
