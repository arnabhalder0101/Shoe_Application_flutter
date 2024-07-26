import "package:flutter/material.dart";
import 'package:google_nav_bar/google_nav_bar.dart';

class myBottomNavigationBar extends StatelessWidget {
  void Function(int)? onTabChange;
  myBottomNavigationBar({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 35),
        child: GNav(
            gap: 8,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            color: Colors.grey,
            activeColor: Colors.black,
            rippleColor: Colors.grey,
            // hoverColor: Colors.yellow,
            iconSize: 20,
            tabBorderRadius: 35,
            //tabActiveBorder: Border.all(color: Colors.white, width: 1),
            tabBackgroundColor: Colors.white.withOpacity(0.6),
            duration: Duration(milliseconds: 400),
            mainAxisAlignment: MainAxisAlignment.center,
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: Icons.shopping_bag_outlined,
                text: "Shop",
              ),
              GButton(
                icon: Icons.shopping_cart_checkout_rounded,
                text: "Cart",
              ),
              //   GButton(
              //     icon: Icons.settings,
              //     text: "Settings",
              //   ),
              //   GButton(
              //     icon: Icons.person_sharp,
              //     text: "Profile",
              //   ),
            ]),
      ),
    );
  }
}
