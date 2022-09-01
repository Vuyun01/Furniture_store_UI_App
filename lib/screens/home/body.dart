
import 'package:flutter/material.dart';
import 'package:furniture_ui_app/app_assets.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/models/Categories.dart';
import 'package:furniture_ui_app/models/Product.dart';
import 'package:furniture_ui_app/screens/home/components/productlist.dart';
import 'package:furniture_ui_app/services/fetchCategories.dart';
import 'package:furniture_ui_app/services/fetchProducts.dart';

import '../../widgets/sectionname.dart';
import 'components/categorylist.dart';
import 'components/productcard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionName(name: "Browser by categories"),
          FutureBuilder<List<Category>>(
            future: fetchCategories(),
            builder: ((context, snapshot){
              if(snapshot.hasData){
                return Categories(categories: snapshot.data!);
              }else if (snapshot.hasError){
                return Center(child: Text("${snapshot.error}"));
              }else{
                return Center(child: Image.asset(AppAssets.rippleGif));
              }
            })
          ),
          SectionName(name: "Recommended Products"),
          FutureBuilder<List<Product>>(
            future: fetchProducts(),
            builder: ((context, snapshot){
              if(snapshot.hasData){
                return Products(products: snapshot.data!);
              }else if (snapshot.hasError){
                return Center(child: Text("${snapshot.error}"));
              }else{
                return Center(child: Image.asset(AppAssets.rippleGif));
              }
            })
          ),
        ],
      ),
    );
  }
}

