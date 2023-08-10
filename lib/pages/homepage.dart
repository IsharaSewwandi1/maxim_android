import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


import '../controllers/auth_controller.dart';
import 'Header.dart';
import 'InputWrapper.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  void _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue[300]!,
            Colors.blue[900]!,
            Colors.blue[200]!
          ]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 120,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
              ),
              child: Column(
                children: <Widget>[
                  InputWrapper(),

                  // Adding a row of three small images
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _launchWebsite('https://www.facebook.com/maximimpression/'); // Launch Facebook website
                        },
                        child: Image.asset(
                          'images/Facebook.png',
                          height: 85,
                          width: 85,
                        ),
                      ),
                      SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          _launchWebsite('https://www.google.com/'); // Launch Google website
                        },
                        child: Image.asset(
                          'images/google.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          _launchWebsite('https://lk.linkedin.com/company/maxim-impressions'); // Launch Google website
                        },
                        child: Image.asset(
                          // 'images/linkdin.png',
                          'images/instar.png',
                          height: 85,
                          width: 85,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Adding the main image
                  // Image.asset(
                  //   'images/maxim_logo_1.png',
                  //   height: 150,
                  //   width: 150,
                  // ),
                  // SizedBox(height: 20),
                ],
              ),




            ))
          ],
        ),


      ),
    );
  }
}