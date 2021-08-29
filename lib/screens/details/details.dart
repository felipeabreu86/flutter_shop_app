import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/screens/details/components/details_body.dart';
import 'package:flutter_shop_app/shared/constants.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: DetailsBody(product),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart.svg"),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
