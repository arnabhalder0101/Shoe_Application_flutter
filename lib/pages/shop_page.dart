import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_application/components/shoe_tile.dart';
import 'package:shoe_application/model/cart_model.dart';
import 'package:shoe_application/model/shoe_model.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //
  void addShoeInCart(ShoeModel shoe) {
    // why this ?
    Provider.of<CartModel>(context, listen: false).addItemIn_userCart(shoe);
    // while it's simple to use --
    // CartModel().addItemIn_userCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.all(Radius.circular(8))),
        // icon: Icon(Icons.info_outline_rounded),
        title: Text(
          "Alert",
          style: TextStyle(fontSize: 18),
        ),
        content: Text("Successfully Added!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, value, child) => Column(
        children: [
          //search bar --
          SizedBox(
            height: 10,
          ),

          GestureDetector(
            onTap: () {
              print("Searching...");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.search_rounded),
                ],
              ),
            ),
          ),

          // message --
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            child: Text(
              "Everyone flies... Some fly longer than others...",
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
            ),
          ),

          // hot picks -- see all --
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // shoes --
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                // get a shoe --
                ShoeModel shoe = value.getShoeList()[index];

                return ShoeTile(
                  shoeModel: shoe,
                  onTap: () => addShoeInCart(shoe),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
