import 'package:exercise_project/main.dart';
import 'package:exercise_project/screens/home/arm_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:exercise_project/models/ArmList.dart';
import 'package:exercise_project/size_config.dart';

import 'arm_list_card.dart';

class ArmBody extends StatelessWidget {
  final ArmList id;
  const ArmBody({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding:
                const EdgeInsets.only(top: 20, left: 22, right: 22),
              child: GridView.builder(
                itemCount: armList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize * 2
                          : 0,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => ArmListCard(
                  arm: armList[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreenArm();
                      }),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
