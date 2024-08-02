import 'package:flutter/material.dart';

import '../models/shoe.dart';


class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  void Function()? onTap;
   ShoeTile({super.key,
    required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:  EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
              child: Image.asset(shoe.imagePath)),
          
          Text(shoe.description,style: TextStyle(color: Colors.grey[600]),),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(shoe.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),

                    const SizedBox(height: 5,),

                    Text("\$" + shoe.price,style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),
              
             GestureDetector(
               onTap: onTap,
               child: Container(
                 decoration: BoxDecoration(color: Colors.black,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))

                 ),

                   padding: const EdgeInsets.all(20.0),
                   child: Icon(Icons.add,color: Colors.white,),
                 ),
             ),
             
            ],
          )
        ],
      ),
    );
  }
}
