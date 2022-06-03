import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';

import 'more_sold_widget.dart';

class MoreSoldRow extends StatelessWidget {
  const MoreSoldRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MoreSoldWidget(
            priceText: 'R\$4.500,00',
            productText: 'PS5',
            image: AppImages.ps5,
          ),
          SizedBox(width: 15),
          MoreSoldWidget(
            priceText: 'R\$370,00',
            productText: 'Mouse Gamer',
            image: AppImages.mouse,
          ),
          SizedBox(width: 15),
          MoreSoldWidget(
            priceText: 'R\$220,00',
            productText: 'Teclado Gamer',
            image: AppImages.teclado,
          ),
          SizedBox(width: 15),
          MoreSoldWidget(
            priceText: 'R\$950,00',
            productText: 'Cadeira gamer',
            image: AppImages.cadeiraGamer,
          ),
        ],
      ),
    );
  }
}
