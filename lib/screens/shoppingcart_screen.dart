import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';
import 'package:imarket_app/widget/shoppingcart_widget.dart';

class ShoppingCartScreen extends StatefulWidget {
  static const id = "shoppingcar_screen";
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Meu Carrinho',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            ShoppingcartWidget(
              image: AppImages.headSet,
              priceText: 'R\$340,00',
              productText: 'HeadSet Gamer',
            ),
            ShoppingcartWidget(
              image: AppImages.iMac,
              priceText: 'R\$14.000,00',
              productText: 'iMac',
            ),
          ],
        ),
      ),
    );
  }
}
