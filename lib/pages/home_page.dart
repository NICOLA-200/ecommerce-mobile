import 'package:ecommerce/components/bottom_nar_bar.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
     setState(() {
       _selectedIndex = index;
     });
  }

  List<Widget> _pages = [
    const ShopPage(),

    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Column(
                 children: [  DrawerHeader(child: Image.asset("lib/images/carLogo.png",color: Colors.white,)),

                   Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                     child: Divider(
                       color: Colors.grey[800],
                     ),),

                   Padding(padding: EdgeInsets.only(left: 8),
                     child:  ListTile(
                       leading: Icon(Icons.home, color: Colors.white,),
                       title: Text("home" , style: TextStyle(color: Colors.white),),
                     ),),

                   Padding(padding: EdgeInsets.only(left: 18),
                     child:  ListTile(
                       leading: Icon(Icons.info, color: Colors.white,),
                       title: Text("About" , style: TextStyle(color: Colors.white),),
                     ),),
                 ],
               ),



              Padding(padding: EdgeInsets.only(left: 18,bottom: 20),
                child:  ListTile(
                  leading: Icon(Icons.logout, color: Colors.white,),
                  title: Text("Logout" , style: TextStyle(color: Colors.white),),
                ),),
            ],
          ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
         builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
            },
           icon: Icon(
             Icons.menu,
             color: Colors.black,
           )
         ),
      ),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomaNavBar(
        onTapChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
