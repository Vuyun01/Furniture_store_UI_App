import 'package:flutter/material.dart';

import '../../../app_assets.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.onTap
  }) : super(key: key);

  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
        width: size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 6),
              blurRadius: 5,
              color: kTextColor.withOpacity(0.15)
            )
          ]
        ),
        child: AspectRatio(
          aspectRatio: 0.8,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: AppAssets.spinnerGif, image: product.image, fit: BoxFit.cover,),
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: kDefaultPadding/2),
                    child: Text(
                      product.title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.4),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.favorite_border, size: 25, color: Colors.red,),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



