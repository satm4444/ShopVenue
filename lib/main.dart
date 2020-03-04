import 'package:flutter/material.dart';
import 'package:shop_venue/screens/product_details_screen.dart';

import 'screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop Venue",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: "Roboto",
      ),
      home: ProductOverviewScreen(),
      routes: {ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen()},
    );
  }
}
