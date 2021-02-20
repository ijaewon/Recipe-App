import 'package:flutter/material.dart';
import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screen/profile/components/profile_body.dart';
import 'package:recipe_app/size_config.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: ProfileBody(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text("Profile"),
      leading: SizedBox(),
      centerTitle: true,
      actions: [
        FlatButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 1.6,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
