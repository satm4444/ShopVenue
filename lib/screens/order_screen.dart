import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/provider/order_provider.dart' show Orders;
import 'package:shop_venue/widgets/app_drawer.dart';
import 'package:shop_venue/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/order_screen';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context).orders;
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      body: ListView.builder(
        itemCount: orderData.length,
        itemBuilder: (ctx, i) => OrderItem(orderData[i]),
      ),
    );
  }
}
