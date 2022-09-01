import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app_assets.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

class DetailsInfo extends StatefulWidget {
  const DetailsInfo({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  State<DetailsInfo> createState() => _DetailsInfoState();
}

class _DetailsInfoState extends State<DetailsInfo> {
  List<Color> colors = [Colors.blueGrey, Colors.grey, Colors.black];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding*2),
      child: SizedBox(
        // color: Colors.grey.shade300,
        width: size.width * 0.3, height: size.height * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${widget.product.category.toUpperCase()}", style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding/2),
              child: Text("${widget.product.title}", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold, fontSize: 25
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding*2),
              child: Text("Price", style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding/2),
              child: Text("\$${widget.product.price}", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding*2),
              child: Text("Available Colors", style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding/2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(colors.length, (index) => 
                    buildColorDot(
                      color: colors[index], 
                      index: index, 
                      onTap: (){
                        setState(() {
                          currentIndex = index;
                        });
                      }
                    ))
              ),
            )
          ],
        ),
      ),
    );
    
  }

  GestureDetector buildColorDot({required Color color, required int index, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 35, height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
        ),
        child: currentIndex == index ? SvgPicture.asset(
          AppAssets.check, color:Colors.white) : SizedBox(),
      ),
    );
  }
}