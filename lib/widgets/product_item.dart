import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/models/product.dart';
import 'package:shop_venue/provider/cart_provider.dart';

import 'package:shop_venue/screens/product_details_screen.dart';

///---This builds the Products of the main screen--//

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final selectedProducts = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductDetailsScreen.routeName,
                arguments: selectedProducts.id);
          },
          child: Hero(
            child: Image.network(
              selectedProducts.imageURL,
              fit: BoxFit.cover,
            ),
            tag: "products${selectedProducts.id}",
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            selectedProducts.title,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (ctx, builder, _) {
              return IconButton(
                icon: Icon(selectedProducts.isFavourite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () {
                  selectedProducts.toggleIsFavourite();
                },
                color: Theme.of(context).accentColor,
              );
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              cart.addItem(selectedProducts.id, selectedProducts.price,
                  selectedProducts.title);
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("Item added in the cart"),
                  duration: Duration(seconds: 1),
                  action: SnackBarAction(
                    label: "Undo",
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              );
            },
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
