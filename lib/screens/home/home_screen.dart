
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui_app/app_assets.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/screens/home/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(AppAssets.menu, height: kSizeIcon-2,),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(AppAssets.seacrh, height: kSizeIcon,),
          ), 
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(AppAssets.scan, height: kSizeIcon,),
          ),],
      ),
      body: Body(),
    );
  }
}