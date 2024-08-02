import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),

          SizedBox(height: 10,),

           Expanded(
             child: ListView.builder(itemBuilder: (context,index) {
               Shoe indiviShoe = value.getUserCart()[index];

               return CartItem(shoe: indiviShoe,);
             },
             itemCount:value.getUserCart().length ,),
           )
        ],
      ),
    ));
  }
}
