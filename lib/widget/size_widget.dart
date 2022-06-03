import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  final String sizeText;
  const SizeWidget({Key? key, required this.sizeText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(sizeText)),
    );
  }
}
