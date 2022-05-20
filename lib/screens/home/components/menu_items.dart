import 'package:flutter/material.dart';
import 'package:jogja/stylings/index.dart';

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
  const MenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
            menuItems.length,
            (index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        buildContext, menuItems[index].routeName);
                  },
                  child: Container(
                      width: getProportionateScreenWidth(80),
                      height: getProportionateScreenWidth(70),
                      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      decoration: BoxDecoration(
                        color: AppColors.kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            menuItems[index].iconData,
                            color: AppColors.kDarkGray,
                            size: getProportionateScreenWidth(25),
                          ),
                          Text(
                            menuItems[index].label,
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(8)),
                          ),
                        ],
                      )),
                ))
      ],
    );
  }
}
