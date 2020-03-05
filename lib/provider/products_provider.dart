import 'package:flutter/material.dart';
import 'package:shop_venue/models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: "first",
      title: "Watch",
      price: 2000,
      description: "The best watch you can find in the market right now !",
      imageURL:
          "https://images.unsplash.com/photo-1508057198894-247b23fe5ade?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      isFavourite: false,
    ),
    Product(
      id: "second",
      title: "Shirt",
      price: 2000,
      description: "Red shirt with retro look",
      imageURL:
          "https://cdn.shopify.com/s/files/1/0107/2422/products/Red_front02_cropped.jpg?v=1494454650",
      isFavourite: false,
    ),
    Product(
      id: "third",
      title: "IPhone",
      price: 2000,
      description: "Get faster with the A22 chip inside this iphone 20",
      imageURL:
          "https://drfone.wondershare.com/images/article/14961580713490.jpg",
      isFavourite: false,
    ),
    Product(
      id: "fourth",
      title: "Shoes",
      price: 2000,
      description: "Blue and grey shoes that fits ur style",
      imageURL:
          "https://www.cadysneakers.com/wp-content/uploads/2019/06/Adidas-AlphaBounce-Beyond-Blue-Grey-White-Shoes-Best-Price-5.jpeg",
      isFavourite: false,
    )
  ];

  List<Product> get items {
    return [..._items];
  }
}
