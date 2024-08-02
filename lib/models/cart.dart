import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/widgets.dart';

class  Cart extends ChangeNotifier {

  List<Shoe> shoes =[
    Shoe(
      name:"benz",
      price: "124000",
      description: "something faster and good ",
      imagePath: "lib/images/car3.jpg"
    ),

    Shoe(
        name:"lamboghini",
        price: "424000",
        description: "something faster and amazing  ",
        imagePath: "lib/images/car2.jpg"
    ),

    Shoe(
        name:"bugati",
        price: "524000",
        description: "something cool and boombasting  ",
        imagePath: "lib/images/car4.jpg"
    ),

  ];

  List<Shoe> userCart = [];


  List<Shoe> getShoeList() {
    return shoes;
  }

  List<Shoe> getUserCart() {
     return userCart;
  }

  void addItemCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();

  }

  void removeItemCart(Shoe shoe) {
     userCart.remove(shoe);
     notifyListeners();
  }

}
