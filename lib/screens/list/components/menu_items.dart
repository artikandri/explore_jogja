import 'package:flutter/material.dart';

class MenuItem {
  IconData iconData;
  String label = "menu";

  MenuItem({required this.iconData, required this.label});
}

List menuItems = [
  MenuItem(iconData: Icons.settings_outlined, label: "Destinations"),
  MenuItem(iconData: Icons.settings_outlined, label: "Places"),
  MenuItem(iconData: Icons.settings_outlined, label: "Tours"),
  MenuItem(iconData: Icons.settings_outlined, label: "Accomodations"),
];

class MenuItems extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              menuItems.length,
              (index) => Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                        size: 40,
                      ),
                      Text(
                        'Hello World',
                      ),
                    ],
                  )),
        ],
      ),
    );
  }
}
