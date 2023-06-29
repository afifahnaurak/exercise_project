import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:exercise_project/models/ArmList.dart';

import '../../../size_config.dart';

class ArmListCard extends StatelessWidget {
  final ArmList arm;
  final Function press;

  const ArmListCard({Key key, this.arm, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    // Now we dont this Aspect ratio
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: arm.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8), //18
        ),
        child: Row( 
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2), //20
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      arm.name,
                      style: TextStyle(
                          fontSize: defaultSize * 3, //22
                          color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: defaultSize * 0.5), // 5
                    Text(
                      arm.description,
                      style: TextStyle(fontSize: 14, color: Color.fromARGB(199, 255, 255, 255)),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icons/clock.svg",
                      text: "${arm.recipes}",
                    ),
                    SizedBox(height: defaultSize * 0.5), //5
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize * 0.5), //5
            AspectRatio(
              aspectRatio: 0.8,
              child: Image.asset(
                arm.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
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
