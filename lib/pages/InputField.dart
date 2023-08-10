import 'package:flutter/material.dart';

import '../controllers/auth_controller.dart';

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey)
              )
          ),
          child: TextField(
            controller: authController.usernameOrEmail,
            decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey)
              )
          ),
          child: TextField(
            controller: authController.password,
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MaterialButton(
            minWidth: double.infinity,
            onPressed: () async {
              await authController.loginUser();
              // _showSuccessAlert(context); // Display alert after successful login
            },

            child: Text('Login' ),

            padding: EdgeInsets.all(15),
            color: Colors.blue[800],

            textColor: Colors.white,

          ),

        ),
      ],
    );
  }
}