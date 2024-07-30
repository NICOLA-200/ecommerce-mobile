import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BottomaNavBar extends StatelessWidget {
  void Function(int)? onTapChange;
  BottomaNavBar({super.key, required this.onTapChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(vertical: 20),

        child: GNav(
             color: Colors.grey[400],
             activeColor: Colors.grey.shade700,
             tabActiveBorder: Border.all(color: Colors.white),
             tabBackgroundColor: Colors.grey.shade300,
             mainAxisAlignment: MainAxisAlignment.center,
             tabBorderRadius: 15,
             onTabChange: (value) => onTapChange,
             tabs: [

             GButton(
               icon: Icons.home,
               text: "Shop",
             ),


          GButton(
            icon: Icons.shopping_bag,
            text: "cart",
          ),
        ]),
    );
  }
}
