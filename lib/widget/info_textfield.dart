import 'package:flutter/material.dart';

import 'info_widget.dart';

class InfoTextfield extends StatelessWidget {
  final String text;
  const InfoTextfield({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InfoWidget(infoText: text),
    );
  }
}
