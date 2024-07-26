import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  Mybutton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(Icons.add, color: Colors.white, size: 30),
      padding: EdgeInsets.all(10),
      color: Colors.black,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.only(
      //     // topLeft: Radius.circular(10),
      //     bottomRight: Radius.circular(1),
      //   ),
      // ),
    );
  }
}
