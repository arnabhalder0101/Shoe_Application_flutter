import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_application/components/mybutton.dart';
import 'package:shoe_application/model/cart_model.dart';
import 'package:shoe_application/model/shoe_model.dart';

class ShoeTile extends StatelessWidget {
  ShoeModel shoeModel;
  void Function()? onTap;

  ShoeTile({super.key, required this.shoeModel, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(left: 20, top: 10, bottom: 20),
      //padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe picture --
          Padding(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  shoeModel.imagePath,
                  height: 180,
                ),
              )),
          // description --
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              shoeModel.description,
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // name + price etc --
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoeModel.name,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text("\$" + shoeModel.price),
                  ],
                ),
              ),
              // plus button to add in cart --
              GestureDetector(
                onTap: onTap,
                child: Container(
                  child: Icon(Icons.add, color: Colors.white, size: 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
