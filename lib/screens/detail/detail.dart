import 'package:flutter/material.dart';
import 'package:food_delivery_app/providers/food.dart';
import 'package:provider/provider.dart';

import 'package:food_delivery_app/constans/colors.dart';

import 'package:food_delivery_app/screens/detail/widget/food_detail.dart';
import 'package:food_delivery_app/screens/detail/widget/food_detail_image.dart';
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
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Consumer<FoodsProvider>(
                  builder: (_, foods, ch) => Text(
                    // foods.itemCount.toString(),
                    foods.count.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // child: Icon(
              //   Icons.arrow_forward_ios_sharp,
              //   size: 16,
              // ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
