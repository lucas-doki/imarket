import 'package:flutter/material.dart';

import 'categories_widget.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoriesWidget(
            text: 'Roupas',
          ),
          SizedBox(width: 15),
          CategoriesWidget(
            text: 'Acessórios',
          ),
          SizedBox(width: 15),
          CategoriesWidget(
            text: 'Decoração',
          ),
          SizedBox(width: 15),
          CategoriesWidget(
            text: 'Eletrônicos',
          ),
        ],
      ),
    );
  }
}
