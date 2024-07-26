import 'package:flutter/material.dart';
import 'package:shoe_application/pages/buttons.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.only(
          top: 40,
          left: 30,
          right: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo --
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "lib/assets/nike_logo.png",
                height: 250,
              ),
            ),
            //space between --
            const SizedBox(
              height: 60,
            ),
            // title --
            Text(
              "Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            //space between --
            const SizedBox(
              height: 40,
            ),

            // info --
            Text(
              "Brand new sneakers for the sportsmans and regular use, we are the best in the market",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),

            //space between --
            const SizedBox(
              height: 30,
            ),
            // buttons --
            myButton(txt: "Press it", pushNavigationName: "/homepage"),
          ],
        ),
      ),
    );
  }
}
