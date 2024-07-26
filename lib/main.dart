import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_application/model/cart_model.dart';
import 'package:shoe_application/pages/home_page.dart';
import 'package:shoe_application/pages/intro_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: {
          "/homepage": (context) => HomePage(),
        },
      ),
      
    );
  }
}
