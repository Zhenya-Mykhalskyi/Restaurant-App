import 'package:flutter/material.dart';
import 'package:food_delivery_app/constans/colors.dart';

import '../../../models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  const FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackgroundColor,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                Icons.access_time_outlined,
                Colors.blue,
                food.waitTime,
              ),
              _buildIconText(
                Icons.star_outlined,
                Colors.amber,
                food.score.toString(),
              ),
              _buildIconText(
                Icons.local_fire_department_outlined,
                Colors.red,
                food.cal,
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
