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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              limit == 0 ? items.length : limit,
              (index) => Row(
                    children: [
                      ItemCard(
                        type: type,
                        data: items[index],
                      ),
                      index < items.length - 1
                          ? SizedBox(width: 20)
                          : Container(),
                    ],
                  )),
        ],
      ),
    );
  }
}
