import 'package:flutter/material.dart';
import 'package:imarket_app/constants/app_image.dart';
import 'package:imarket_app/screens/account_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  scale: 0.1,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.criadorApp),
                ),
              ),
            ),
          ),
          Text(
            'Lucas Doki',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          Divider(
            color: Colors.blue,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AccountScreen.id);
            },
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Minha Conta',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(
                Icons.directions_bus_rounded,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Text('Acompanhar pedido',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  )),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(
                Icons.credit_card_rounded,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Text('Formas de pagamento',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
