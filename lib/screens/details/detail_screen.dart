import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui_app/screens/details/components/body.dart';

import '../../app_assets.dart';
import '../../constants.dart';
import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: kSizeIcon)
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(AppAssets.bag, height: kSizeIcon,),
          ), 
        ],
      ),
      body: Body(product: product),
    );
  }
}