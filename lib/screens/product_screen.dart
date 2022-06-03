import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_gradients.dart';
import 'package:imarket_app/constants/app_image.dart';
import 'package:imarket_app/widget/size_row.dart';

class ProductScreen extends StatefulWidget {
  static const String id = 'product_screen';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: 25,
                    width: 25,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                image: DecorationImage(
                  scale: 0.1,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.cadeiraGamer),
                ),
              ),
              height: 350,
              width: 500,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite_outline_sharp, size: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Cadeira Gamer",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'R\$ 300,00',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(Icons.star, size: 25, color: Colors.yellow),
                  Icon(Icons.star, size: 25, color: Colors.yellow),
                  Icon(Icons.star, size: 25, color: Colors.yellow),
                  Icon(Icons.star, size: 25, color: Colors.yellow),
                  Icon(Icons.star_rate_outlined,
                      size: 25, color: Colors.yellow),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'COR:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'PRETO',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'SELECIONE UM TAMANHO',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizeRow(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  gradient: AppGradients.linear,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CupertinoButton(
                  child: Text(
                    "Adicionar no carrinho",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
