import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {


  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen:  false).addItemCart(shoe);

    showDialog(context: context, builder: (context) => AlertDialog(
       title:  Text("successfully added"),
      content: Text("Check your cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context,value ,child) =>  Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search,color: Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text("everyone feels like ... in the midde of good life ", style: TextStyle(color: Colors.grey[600]),),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hot Picks 🔥',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),),
              Text("see all",style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ),

        const SizedBox(height: 48,),

        Expanded(child: ListView.builder(itemBuilder: (context,index)  {
          Shoe shoe = value.getShoeList()[index];
          return ShoeTile(
              shoe: shoe,
              onTap: () => addShoeToCart(shoe),
          );
        },
          itemCount: 4,
          scrollDirection: Axis.horizontal,),),

        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20, right: 20),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    )
    );
  }
}
