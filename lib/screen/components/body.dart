import 'package:flutter/material.dart';
import 'package:recipe_app/models/RecipeBundle.dart';
import 'package:recipe_app/screen/components/categories.dart';
import 'package:recipe_app/screen/components/recipe_bundles_card.dart';
import 'package:recipe_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Categories(),
          Expanded(
              child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.65,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                ),
                itemBuilder: (context, index) => RecipeBundleCard(
                      recipeBundle: recipeBundles[index],
                      press: () {},
                    )),
          ))
        ],
      ),
    );
  }
}
