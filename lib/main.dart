import 'dart:async';
import 'package:exercise_project/components/my_bottom_nav_bar.dart';
import 'package:exercise_project/screens/home/abs_screen.dart';
import 'package:exercise_project/screens/home/arm_screen.dart';
import 'package:exercise_project/screens/home/hips_screen.dart';
import 'package:exercise_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:exercise_project/constants.dart';
import 'package:exercise_project/models/NavItem.dart';
import 'package:exercise_project/screens/home/legs_screen.dart';
import 'package:exercise_project/screens/home/abs_details_screen.dart';
import 'package:exercise_project/screens/home/components/bottom_nav_bar.dart';
import 'package:exercise_project/screens/home/components/category_card.dart';
import 'package:exercise_project/screens/home/components/search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Avy Exercise App',
        theme: ThemeData(
          // backgroundColor: Colors.white,
          scaffoldBackgroundColor: kBackgroundColor,
          // We apply this to our appBarTheme because most of our appBar have this style
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Cairo",
          textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        ),
        home: SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    HomeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [Color.fromARGB(255, 135, 174, 115),Color.fromARGB(255, 135, 174, 115),]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logoo.png",
                  height: 300.0,
                  width: 300.0,
                ),
                
              ],
            ),
            CircularProgressIndicator( 
              valueColor:  AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 72, 51, 12)),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      appBar: buildAppBar(),
      body: Stack(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                    ),
                  ),
                  Text(
                    "Let's Workout!",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 84, 125, 64)),
                  ),
                  Text(
                    "Area of Focus",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 25, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 84, 125, 64)),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 10),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Arm",
                          imageSrc: "assets/images/arm.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ArmScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Abs",
                          imageSrc: "assets/images/abs.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return AbsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Legs",
                          imageSrc: "assets/images/legs.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LegsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Hips",
                          imageSrc: "assets/images/hips.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HipsScreen();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.white, 
        statusBarIconBrightness: Brightness.dark,
      ),
  centerTitle: true,
      title: Image.asset("assets/images/logoo.png", height: 111, width: 111),
    );
  }
}