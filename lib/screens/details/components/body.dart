import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui_app/app_assets.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/screens/details/components/detail_info.dart';
import 'package:furniture_ui_app/widgets/roundedbutton.dart';

import '../../../models/Product.dart';
import 'detail_description.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width, height: size.height,
      child: Stack(
        children: [
          DetailsDescription(product: product),
          Positioned(
            top: size.height * 0.15, left: size.height * 0.12,
            child: Hero(
              tag: product.id,
              child: Image.network(
                "${product.image}",
                width: size.width*0.85, height: size.height * 0.4,
                fit: BoxFit.fill
              ),
            )
          ),
          DetailsInfo(product: product),
        ],
      ),
    );
  }
}

