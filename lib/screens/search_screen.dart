import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';
import 'package:imarket_app/widget/product_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                    Container(
                      height: 30,
                      width: 320,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Pesquisar',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                ProductWidget(
                  productText: 'HeadSet Gamer',
                  priceText: 'R\$370,00',
                  image: AppImages.headSet,
                ),
                ProductWidget(
                  productText: 'Teclado Gamer',
                  priceText: 'R\$220,00',
                  image: AppImages.teclado,
                ),
              ],
            ),
            Row(
              children: [
                ProductWidget(
                  productText: 'Lustre',
                  priceText: 'R\$134,00',
                  image: AppImages.lustre,
                ),
                ProductWidget(
                  productText: 'PS5',
                  priceText: 'R\$4.500,00',
                  image: AppImages.ps5,
                ),
              ],
            ),
            Row(
              children: [
                ProductWidget(
                  productText: 'Nike Air Jordan',
                  priceText: 'R\$300,00',
                  image: AppImages.nikeAir,
                ),
                ProductWidget(
                  productText: 'Smartwatch',
                  priceText: 'R\$170,00',
                  image: AppImages.smartwatch,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
