import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(
                  onPressed: (){}, 
                  name: "Add to Cart",
                  horizontal: kDefaultPadding*4, 
                  vertical: kDefaultPadding,),
                LikeButton(
                  size: 40,
                  circleColor:
                  CircleColor(start: Color.fromARGB(255, 255, 238, 0), end: Color.fromARGB(255, 225, 65, 92)),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Color.fromARGB(255, 240, 157, 14),
                    dotSecondaryColor: Color.fromARGB(255, 114, 225, 66),
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      product.isLiked ? Icons.favorite : Icons.favorite_border,
                      // color: isLiked ? Colors.red : Colors.grey,
                      color: Colors.red,
                      size: 40,
                    );
                  },
                  onTap: (bool isLiked) async {
                    return (product.isLiked = !product.isLiked);
                  },
                )
              ],
            )
          ],
        ),
      )
    );
  }
}