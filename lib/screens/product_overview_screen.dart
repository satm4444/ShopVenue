import 'package:flutter/material.dart';

import 'package:shop_venue/widgets/product_grid.dart';

//-----First screen of our app---///

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop Venue"),
          centerTitle: true,
        ),
        body: ProductGrid());
  }
}
