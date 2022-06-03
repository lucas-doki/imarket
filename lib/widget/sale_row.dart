import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';
import 'package:imarket_app/widget/sale_widget.dart';

class SaleRow extends StatelessWidget {
  const SaleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SaleWidget(
            priceText: 'R\$170,00',
            productText: 'Smartwatch',
            image: AppImages.smartwatch,
          ),
          SizedBox(width: 15),
          SaleWidget(
            productText: 'Nike Air Jordan',
            priceText: 'R\$300,00',
            image: AppImages.nikeAir,
          ),
          SizedBox(width: 15),
          SaleWidget(
            productText: 'Lustre',
            priceText: 'R\$134,00',
            image: AppImages.lustre,
          ),
          SizedBox(width: 15),
          SaleWidget(
            productText: 'Geladeira Brastemp',
            priceText: 'R\$4.000,00',
            image: AppImages.geladeira,
          ),
        ],
      ),
    );
  }
}
