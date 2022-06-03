import 'package:flutter/material.dart';
import 'package:imarket_app/widget/info_textfield.dart';
import 'package:imarket_app/widget/info_widget.dart';

class AccountScreen extends StatefulWidget {
  static const id = "account_screen";
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: 25,
                    width: 25,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Minha Conta',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20),
            InfoWidget(infoText: 'Nome Completo:'),
            InfoTextfield(text: 'Lucas Doki'),
            InfoWidget(infoText: 'Email:'),
            InfoTextfield(text: 'lucasdoki@gmail.com'),
            InfoWidget(infoText: 'CPF:'),
            InfoTextfield(text: '525*******'),
            InfoWidget(infoText: 'Endereço:'),
            InfoTextfield(text: 'Al.Bucarest 376'),
            InfoWidget(infoText: 'Telefone:'),
            InfoTextfield(text: '(11) 99346-2788'),
          ],
        ),
      ),
    );
  }
}
