import 'package:exercise_project/screens/profile/home.dart';
import 'package:flutter/material.dart';
import 'package:exercise_project/screens/home/legs_screen.dart';
import 'package:exercise_project/screens/profile/prrofile_screen.dart';

import '../main.dart';

class NavItem {
  final int id;
  final String icon;
  final String title;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination, this.title});

// If there is no destination then it help us
  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

// If we made any changes here Provider package rebuid those widget those use this NavItems
class NavItems extends ChangeNotifier {
  // By default first one is selected
  int selectedIndex = 0;

  void chnageNavIndex({int index}) {
    selectedIndex = index;
    // if any changes made it notify widgets that use the value
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      title: "Today",
      icon: "assets/icons/home.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 2,
      title: "Today",
      icon: "assets/icons/list.svg",
      destination: ToDO(),
    ),
  ];
}
