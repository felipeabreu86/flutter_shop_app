import 'package:flutter/material.dart';
import 'package:flutter_shop_app/shared/constants.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset("assets/icons/back.svg"),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: kTextColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: kTextColor,
        ),
      ),
      SizedBox(
        width: (kDefaultPadding / 2),
      )
    ],
  );
}
