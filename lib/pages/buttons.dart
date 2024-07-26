// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  String txt;
  String pushNavigationName;

  myButton({
    super.key,
    required this.txt,
    required this.pushNavigationName,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, pushNavigationName),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[900], borderRadius: BorderRadius.circular(10)),
          height: 50,
          child: Center(
            child: Text(
              txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
