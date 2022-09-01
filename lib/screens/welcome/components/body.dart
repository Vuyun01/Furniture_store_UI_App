
import 'package:flutter/material.dart';
import 'package:furniture_ui_app/screens/home/home_screen.dart';

import '../../../app_assets.dart';
import '../../../widgets/roundedbutton.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<String> data = [
    "Welcome to FurnitureShop. Let's shop.",
    "Help people connect with our stores \naround the US.",
    "Easy way to buy your furniture stuffs. \nJust stay at home with us",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width, height: size.height,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value){
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: data.length,
              itemBuilder: (_, index) => Column(
                children: [
                  SizedBox(height: size.height * 0.08,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("FurnitureShop", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 1
                    )),
                  ),
                  Text(data[index], style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black54, fontSize: 17,
                    letterSpacing: 0.8,
                  ), textAlign: TextAlign.center),
                  // SizedBox(height: size.height * 0.1,),
                  Spacer(),
                  SizedBox(
                    width: size.width * 0.8,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset("assets/images/splash_${index+1}.png", fit: BoxFit.fill)
                    ),
                  )
                ],
              )
              ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(data.length, (index) => buildDot(index, currentPage)),
                ),
                RoundedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  name: "Next",
                  vertical: 20,
                )
              ],
            )
          )
        ],
      ),
    );
  }

   AnimatedContainer buildDot(int index, int currentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 1.5),
      width: currentPage == index ? 40 : 15,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentPage == index ? Colors.orangeAccent : Colors.black38
      ),
    );
  }
}

