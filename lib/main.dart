import 'package:flutter/material.dart';
import 'package:food_ordering_app/res/menuItems.dart';
import 'package:food_ordering_app/screens/HomePage.dart';
import 'package:food_ordering_app/screens/cartPage.dart';
import 'package:food_ordering_app/screens/detailsPage.dart';
import 'package:food_ordering_app/screens/itemDetailsPage.dart';
import 'package:provider/provider.dart';
import 'cartProvider.dart';
import 'modal/menuItemsModel.dart';

void main() {
  MenuItemsModelList =
      menuList.map((e) => MenuItemsModel.fromMap(data: e)).toList();

  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'itemDetailsPage': (context) => const ItemDetailsPage(),
        'cartPage': (context) => const cartPage(),
        'detailsPage': (context) => const DetailsPage(),
      },
    ),
  ));
}
