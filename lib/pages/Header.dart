import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          SizedBox(height: 5),
          // Adding an Image
          Center(
            child: Image.asset(
              'images/maxim_logo_1.png', // Replace with your image asset path
              height: 150,
              width: 150,
            ),
          ),
          // Center(
          //   child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 60),),
          // ),
          SizedBox(height: 10,),
          Center(
            child: Text("Welcome to Maxim Android App", style: TextStyle(color: Colors.white, fontSize: 21),),
          )
        ],
      ),
    );
  }
}