import 'package:flutter/material.dart';

import '../../../app_assets.dart';
import '../../../constants.dart';
import '../../../models/Categories.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.43,
      margin: const EdgeInsets.fromLTRB(20, 10, 0, 20),
      // color: Colors.cyan,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
                      child: Text(
                        category.title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
                      child: Text(
                        "${category.numOfProducts}+ Products",
                        style: TextStyle(color: kTextColor.withOpacity(0.4)),
                        
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              top: 0, left: 0, right: 0,
              child: AspectRatio(
                aspectRatio: 0.9,
                child: FadeInImage.assetNetwork(
                  placeholder: AppAssets.spinnerGif, image: category.image,
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}

