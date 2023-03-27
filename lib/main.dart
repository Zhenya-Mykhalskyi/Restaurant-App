import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/providers/food.dart';
import 'package:provider/provider.dart';

import '../screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => FoodsProvider()),
      ],

      // SystemChrome.setSystemUIOverlayStyle(
      //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery',
        home: HomePageSreen(),
      ),
    );
  }
}
