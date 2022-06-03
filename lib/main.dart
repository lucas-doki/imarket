import 'package:flutter/material.dart';
import 'package:imarket_app/screens/account_screen.dart';
import 'package:imarket_app/screens/home_screen.dart';
import 'package:imarket_app/screens/more_sold_screen.dart';
import 'package:imarket_app/screens/product_screen.dart';
import 'package:imarket_app/screens/shoppingcart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ShoppingCartScreen.id: (context) => ShoppingCartScreen(),
        MoreSoldScreen.id: (context) => MoreSoldScreen(),
        ProductScreen.id: (context) => ProductScreen(),
        AccountScreen.id: (context) => AccountScreen(),
      },
    );
  }
}