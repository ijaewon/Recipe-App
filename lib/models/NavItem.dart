import 'package:flutter/material.dart';
import 'package:recipe_app/screen/home/home_screen.dart';
import 'package:recipe_app/screen/profile/profile_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination});

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

// If we made any changes here Provider package rebuild those widget those use this NavItems
class NavItems extends ChangeNotifier {
  int selectedIndex = 0, previousSelectedIndex = 0;

  void chnageNavIndex({int index, @required BuildContext context}) {
    selectedIndex = index;
    // If we click on another page, It's working.
    if (selectedIndex != previousSelectedIndex) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => items[index].destination));
    }
    previousSelectedIndex = selectedIndex;
    // if any changes made it notify widgets that use the value
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/camera.svg",
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chef_nav.svg",
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/user.svg",
      destination: ProfileScreen(),
    ),
  ];
}
