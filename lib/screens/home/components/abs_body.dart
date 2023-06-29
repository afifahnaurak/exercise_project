import 'package:exercise_project/main.dart';
import 'package:exercise_project/screens/home/abs_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:exercise_project/models/AbsList.dart';
import 'package:exercise_project/size_config.dart';

import 'abs_list_card.dart';

class AbsBody extends StatelessWidget {
  final AbsList id;
  const AbsBody({Key key, this.id}) : super(key: key);

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
                itemCount: absList.length,
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
                itemBuilder: (context, index) => AbsListCard(
                  abs: absList[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreenAbs();
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
