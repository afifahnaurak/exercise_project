import 'package:exercise_project/main.dart';
import 'package:exercise_project/models/AbsList.dart';
import 'package:exercise_project/screens/home/abs_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:exercise_project/components/my_bottom_nav_bar.dart';
import 'package:exercise_project/screens/home/components/abs_body.dart';
import 'package:exercise_project/size_config.dart';

class AbsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
          itemBuilder: (context, index){
            final AbsList abs = absList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailsScreenAbs(abs: abs);
                }));
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 8, right: 15, left: 15 ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: abs.color,
                      borderRadius: BorderRadius.circular(25), //18
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  abs.name,
                                  style: TextStyle(
                                    fontSize: 25, //22
                                    color: Colors.white),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  abs.description,
                                  style: TextStyle(fontSize: 14, color: Color.fromARGB(199, 255, 255, 255)),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,  
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildInfoRow(
                                  defaultSize,
                                  iconSrc: "assets/icons/clock.svg",
                                  text: "${  abs.recipes}",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset(abs.imageSrc),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            );
          },
          itemCount: absList.length,
        ),
      // We are not able to BottomNavigationBar because the icon parameter dont except SVG
      // We also use Provied to manage the state of our Nav
      bottomNavigationBar: MyBottomNavBar(),
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

  Row buildInfoRow(double defaultSize, {String iconSrc, text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(width: defaultSize), // 10
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
