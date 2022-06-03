import 'package:flutter/material.dart';

class MoreSoldScreen extends StatefulWidget {
  static const String id = 'more_sold_screen';
  const MoreSoldScreen({Key? key}) : super(key: key);

  @override
  State<MoreSoldScreen> createState() => _MoreSoldScreenState();
}

class _MoreSoldScreenState extends State<MoreSoldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
