import 'package:flutter/material.dart';
import 'package:recipe_app/screen/components/categories.dart';
import 'package:recipe_app/screen/components/recipe_bundles_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categories(),
        RecipeBundleCard(),
      ],
    );
  }
}
