import 'package:flutter/material.dart';
import 'package:imarket_app/widget/size_widget.dart';

class SizeRow extends StatelessWidget {
  const SizeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizeWidget(sizeText: 'PP'),
          SizedBox(width: 15),
          SizeWidget(sizeText: 'P'),
          SizedBox(width: 15),
          SizeWidget(sizeText: 'M'),
          SizedBox(width: 15),
          SizeWidget(sizeText: 'G'),
          SizedBox(width: 15),
          SizeWidget(sizeText: 'GG'),
        ],
      ),
    );
  }
}
