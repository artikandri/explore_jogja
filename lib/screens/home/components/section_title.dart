import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jogja/stylings/index.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.black,
              )),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            AppLocalizations.of(context)!.seeMore,
            style: TextStyle(
                color: AppColors.kDarkGray,
                fontSize: getProportionateScreenWidth(12)),
          ),
        ),
      ],
    );
  }
}
