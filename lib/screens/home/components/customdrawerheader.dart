import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    Key? key,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.blueGrey.shade300,
      borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.only(top: kDefaultPadding*2),
          height: size.height * 0.3, width: size.width,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/splash_1.png"),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white
                      ),
                      text: "Nguyen Van A\n"
                    ),
                    TextSpan(
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16,
                        color: Colors.white60
                      ),
                      text: "myemail@gmail.com"
                    ),
                  ]
                )
              )
      
            ],
          ),
        ),
      ),
    );
  }
}
