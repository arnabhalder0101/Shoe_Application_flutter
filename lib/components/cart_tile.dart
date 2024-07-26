// import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_application/model/cart_model.dart';
import 'package:shoe_application/model/shoe_model.dart';

class CartTile extends StatefulWidget {
  ShoeModel shoe;

  CartTile({super.key, required this.shoe});
  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  void removeItem() {
    setState(() {
      Provider.of<CartModel>(context, listen: false)
          .removeItemIn_userCart(widget.shoe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: ListTile(
        tileColor: Colors.grey[100],
        leading: Image.asset(
          widget.shoe.imagePath,
          // width: 110,
        ),
        title: Text(
          widget.shoe.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("\$" + widget.shoe.price),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => removeItem,
        ),
      ),
    );
  }
}
