import 'package:flutter/material.dart';
import 'package:furniture_ui_app/constants.dart';

import '../../../widgets/custom_icon_button.dart';

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Wrap(
        runSpacing: 10, //create a gap between each items
        children: [
          CustomIconButton(icon: Icons.home_outlined, name: "Home", onTap: (){},),
          CustomIconButton(icon: Icons.favorite_outline, name: "My Favorites", onTap: (){},),
          CustomIconButton(icon: Icons.update, name: "Updates", onTap: (){},),
          CustomIconButton(icon: Icons.notifications_outlined, name: "Notifications", onTap: (){},),
          Divider(color: Colors.black54,),
          CustomIconButton(icon: Icons.settings_outlined, name: "Settings", onTap: (){},),
          CustomIconButton(icon: Icons.account_tree_outlined, name: "Plugins", onTap: (){},),

        ],
      ),
    );
  }
}

