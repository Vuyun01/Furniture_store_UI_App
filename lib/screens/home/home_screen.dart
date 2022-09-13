


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui_app/app_assets.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/screens/home/body.dart';

import '../../widgets/custom_icon_button.dart';
import 'components/customdrawerheader.dart';
import 'components/customdrawerbody.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Colors.black38,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
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
      drawer: Drawer(
        width: size.width * 0.7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50))),
        backgroundColor: Colors.white,
        child: Column(
          children: [
            CustomDrawerHeader(),
            CustomDrawerBody()
          ],
        )
        
      ),
    );
  }
}

