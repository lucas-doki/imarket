import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';

import 'favorites_widget.dart';

class FavoritesRow extends StatelessWidget {
  const FavoritesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FavoritesWidget(
          productText: 'Cadeira Gamer',
          priceText: 'R\$500,00',
          image: AppImages.iMac,
        ),
        FavoritesWidget(
          productText: 'Cadeira Gamer',
          priceText: 'R\$500,00',
          image: AppImages.iMac,
        ),
      ],
    );
  }
}
