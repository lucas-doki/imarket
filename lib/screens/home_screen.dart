import 'package:flutter/material.dart';
import 'package:imarket_app/screens/search_screen.dart';
import 'package:imarket_app/screens/shoppingcart_screen.dart';
import 'package:imarket_app/screens/start_screen.dart';
import 'favorites_screen.dart';
import 'menu_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // ignore: unused_field
  List<Widget> _widgetOptions = <Widget>[
    StartScreen(),
    SearchScreen(),
    FavoritesScreen(),
    ShoppingCartScreen(),
    MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('iMarket', style: TextStyle(color: Colors.blue)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.blue,
            ),
            label: "Início",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 35,
              color: Colors.blue,
            ),
            label: "Pesquisa",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 35,
              color: Colors.blue,
            ),
            label: "Favoritos",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 35,
              color: Colors.blue,
            ),
            label: "Carrinho",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_rounded,
              size: 35,
              color: Colors.blue,
            ),
            label: "Menu",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
