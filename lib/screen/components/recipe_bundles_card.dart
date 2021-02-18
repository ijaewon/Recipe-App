import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/models/RecipeBundle.dart';

import '../../size_config.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle recipeBundle;
  final Function press;

  const RecipeBundleCard({Key key, this.recipeBundle, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8),
        ),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              // EdgeInsets.all(double) : 좌,우,위,아래 여백을 균등하게 준다.
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    recipeBundle.title,
                    style: TextStyle(
                      fontSize: defaultSize * 2.2,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: defaultSize * 0.5,
                  ),
                  Text(
                    recipeBundle.description,
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  buildInfoRow(defaultSize,
                      iconSrc: "assets/icons/pot.svg",
                      text: "${recipeBundle.recipes} Recipes"),
                  SizedBox(
                    height: defaultSize * 0.5,
                  ),
                  buildInfoRow(defaultSize,
                      iconSrc: "assets/icons/chef.svg",
                      text: "${recipeBundle.chefs} Chefs"),
                  Spacer()
                ],
              ),
            )),
            SizedBox(
              width: defaultSize * 0.5,
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundles[0].imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {String iconSrc, text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize, //10
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
