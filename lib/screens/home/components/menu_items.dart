import 'package:flutter/material.dart';

class MenuItem {
  IconData iconData;
  String label = "menu";
  String routeName = "/destinations";

  MenuItem(
      {required this.iconData, required this.label, required this.routeName});
}

List menuItems = [
  MenuItem(
      iconData: Icons.explore,
      label: "Destinations",
      routeName: "/destinations"),
  MenuItem(iconData: Icons.celebration, label: "Events", routeName: "/events"),
  MenuItem(
      iconData: Icons.hotel,
      label: "Accomodations",
      routeName: "/accomodations"),
  MenuItem(iconData: Icons.tour, label: "Tours", routeName: "/tours"),
];

class MenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            menuItems.length,
            (index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(buildContext, menuItems[index].routeName);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      menuItems[index].iconData,
                      color: Colors.black,
                      size: 40,
                    ),
                    Text(
                      menuItems[index].label,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
