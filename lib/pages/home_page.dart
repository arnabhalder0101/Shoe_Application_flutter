import 'package:flutter/material.dart';
import 'package:shoe_application/components/bottom_nav_bar.dart';
import 'package:shoe_application/pages/cart_page.dart';
import 'package:shoe_application/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [ShopPage(), CartPage()];

  int selected_index = 0;
  void bottomNavBarFunc(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "lib/assets/nike_logo.png",
                    color: Colors.white,
                  ),
                ),
                // listTiles --
                ListTile(
                  title: Text(
                    "H O M E",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.home_rounded,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text(
                    "A B O U T",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            // logout --
            Column(
              children: [
                ListTile(
                  title: Text(
                    "L O G O U T",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: myBottomNavigationBar(
        onTabChange: (index) => bottomNavBarFunc(index),
      ),
      body: _pages[selected_index],
    );
  }
}
