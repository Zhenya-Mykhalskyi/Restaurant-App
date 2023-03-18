import 'package:flutter/material.dart';

import 'package:food_delivery_app/constans/colors.dart';
import 'package:food_delivery_app/models/food.dart';

import 'package:food_delivery_app/screens/detail/widget/food_detail.dart';
import 'package:food_delivery_app/screens/detail/widget/food_detail_image.dart';
import 'package:food_delivery_app/screens/detail/widget/food_quantity.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';

class DetailScreen extends StatelessWidget {
  final Food food;
  const DetailScreen(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodDetailImage(food),
            FoodDetail(food),
          ],
        ),
      ),
    );
  }
}
