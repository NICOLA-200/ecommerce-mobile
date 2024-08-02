import 'package:flutter/material.dart';

import 'home_page.dart';



class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("lib/images/carLogo.png"),
                ),
                 const SizedBox(height:48),

                Text("Just do it ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                const SizedBox(height:38),

                Text("Brands new cars that  can take you anywhere , safely. It is  only of quality", style: TextStyle(fontSize: 16, color: Colors.grey), textAlign: TextAlign.center,),

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: GestureDetector(
                       onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                       },
                    child: Container(
                      child: Center(child: Text("Shop now", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20),



                    ),
                  ),
                ),


              ],
          ),
        ),
      ),
    );
  }
}
