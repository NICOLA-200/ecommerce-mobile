import 'package:ecommerce/models/shoe.dart';

class  Cart {

  List<Shoe> shoes =[
    Shoe(
      name:"benz",
      price: "124000",
      description: "something faster and good ",
      imagePath: "lib/images/car1.png"
    ),

    Shoe(
        name:"lamboghini",
        price: "424000",
        description: "something faster and amazing  ",
        imagePath: "lib/images/car2.png"
    ),

    Shoe(
        name:"bugati",
        price: "524000",
        description: "something cool and boombasting  ",
        imagePath: "lib/images/car4.png"
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
  }

  void removeItemCart(Shoe shoe) {
     userCart.remove(shoe);
  }

}
