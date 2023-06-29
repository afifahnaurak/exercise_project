import 'package:exercise_project/components/my_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:exercise_project/constants.dart';
import 'package:exercise_project/screens/home/components/bottom_nav_bar.dart';
import 'package:exercise_project/screens/home/components/search_bar.dart';
import 'package:exercise_project/models/LegsList.dart';

class DetailsScreenLegs extends StatelessWidget {
  final LegsList legs;
  const DetailsScreenLegs({Key key, this.legs}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: MyBottomNavBar(),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              // Here the height of the container is 45% of our total height
              height: size.height * .45,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates.png"),
                ),
              ),
            ),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  child: Text(
                    legs.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 35.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    legs.recipes,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Text(
                    legs.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset(legs.imageSrc)
                ),
              ],
            ), 
          ),
        )
          ],
        ),
      ),
    );
  }
  AppBar buildAppBar(context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      // On Android by default its false
      centerTitle: true,
      title: Image.asset("assets/images/logoo.png", height: 111, width: 111),
    );
  }
}