import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screen/profile/components/info.dart';
import 'package:recipe_app/screen/profile/components/profile_menu_item.dart';
import 'package:recipe_app/size_config.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Info(
            image: "assets/images/pic.png",
            name: "Jhon Deo",
            email: "jwlee010523@gmail.com",
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 2,
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Saved Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_color.svg",
            title: "Super Plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/language.svg",
            title: "Change Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/info.svg",
            title: "Help",
            press: () {},
          ),
        ],
      ),
    );
  }
}
