import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../widgets/roundedbutton.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0, left: 0,right: 0,
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
        height: size.height * 0.45,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 30
            )
          ],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("${product.subTitle}", style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold, fontSize: 20)),
            Text("${product.description}", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: kTextColor.withOpacity(0.5), fontSize: 15)),
            RoundedButton(
              onPressed: (){}, 
              name: "Add to Cart",
              horizontal: kDefaultPadding*4, 
              vertical: kDefaultPadding,)
          ],
        ),
      )
    );
  }
}