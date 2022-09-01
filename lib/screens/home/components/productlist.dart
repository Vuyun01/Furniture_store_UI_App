import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/screens/details/detail_screen.dart';
import 'package:furniture_ui_app/screens/home/components/productcard.dart';

import '../../../models/Product.dart';

class Products extends StatelessWidget {
  const Products({Key? key, required this.products, }) : super(key: key);

  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: GridView.builder(
        shrinkWrap: true, // allow showing tiles
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7
        ), 
        itemBuilder: (_, index) => ProductCard(onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailsScreen(product: products[index],)));
        }, product: products[index],)
      ),
      // child: GridView.count(
      //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //   shrinkWrap: true,
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 20,
      //   crossAxisSpacing: 20,
      //   childAspectRatio: 0.7,
      //   physics: NeverScrollableScrollPhysics(), // grid stop scrolling itself
      //   children: List.generate(6, (index) => ProductCard(product: products[index], onTap: (){},)),
      // ),
    );
  }
}