import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String infoText;
  const InfoWidget({Key? key, required this.infoText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        infoText,
        style: TextStyle(color: Colors.blue, fontSize: 17),
      ),
    );
  }
}
