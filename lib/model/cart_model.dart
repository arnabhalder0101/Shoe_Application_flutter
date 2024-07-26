import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_application/model/shoe_model.dart';

class CartModel extends ChangeNotifier {
  //list oof shoes on sale --
  List<ShoeModel> shoeList = [
    ShoeModel(
        name: "Zoom FREAK",
        price: "236",
        imagePath: "lib/assets/shoe1.jpg",
        description:
            "The Forward thinking design of his latest shoe in the market"),
    ShoeModel(
        name: "Air Jordan",
        price: "228",
        imagePath: "lib/assets/shoe2.jpg",
        description:
            "The Forward thinking design of his latest shoe in the market"),
    ShoeModel(
        name: "Nike Runner OG",
        price: "288",
        imagePath: "lib/assets/shoe3.jpg",
        description:
            "The Forward thinking design of his latest shoe in the market"),
    ShoeModel(
        name: "KD Treys",
        price: "240",
        imagePath: "lib/assets/shoe4.jpg",
        description:
            "The Forward thinking design of his latest shoe in the market"),
    ShoeModel(
        name: "Kyrie 6",
        price: "190",
        imagePath: "lib/assets/shoe5.jpg",
        description:
            "The Forward thinking design of his latest shoe in the market"),
  ];

  // list of user choice --

  List<ShoeModel> userCart = [];

  // CartModel({required super.create});

  // get list of shoes on sale --
  List<ShoeModel> getShoeList() {
    return shoeList;
  }

  //get list on users cart --
  List<ShoeModel> getUserCart() {
    notifyListeners();
    return userCart;
  }

  // add items in the cart --
  void addItemIn_userCart(ShoeModel shoe) {
    userCart.add(shoe);
  }

  //remove items from the cart --
  void removeItemIn_userCart(ShoeModel shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  // // reove with indexing --one at a time --
  // void removeUserCart(int index) {
  //   userCart.removeAt(index);
  // }
}
