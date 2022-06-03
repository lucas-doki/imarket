import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';
import 'package:imarket_app/widget/favorites_widget.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Favoritos',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Row(
              children: [
                FavoritesWidget(
                  image: AppImages.iMac,
                  priceText: 'R\$14.000,00',
                  productText: 'iMac',
                ),
                FavoritesWidget(
                  image: AppImages.ps5,
                  priceText: 'R\$4.500,00',
                  productText: 'Playstation 5',
                ),
              ],
            ),
            Row(
              children: [
                FavoritesWidget(
                  image: AppImages.iphone,
                  priceText: 'R\$10.000,00',
                  productText: 'iPhone 13 Pro Max',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
