import 'package:exercise_project/main.dart';
import 'package:exercise_project/screens/home/hips_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:exercise_project/models/HipsList.dart';
import 'package:exercise_project/size_config.dart';

import 'hips_list_card.dart';

class HipsBody extends StatelessWidget {
  final HipsList id;
  const HipsBody({Key key, this.id}) : super(key: key);

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
                itemCount: hipsList.length,
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
                itemBuilder: (context, index) => HipsListCard(
                  hips: hipsList[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreenHips();
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
