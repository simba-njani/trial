import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: const SafeArea(
        child: Column(

          //welcome text

          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("Hi, Dereck"),
                    SizedBox(height: 8,),
                    Text("Bill Splitter"),
                  ],
                ),

                Icon(Icons.person)
              ],
            )
          ],


          // split with



          // nearby friends


          //recent split
        )),
    );
  }
}