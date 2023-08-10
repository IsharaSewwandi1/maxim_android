import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthController {
  TextEditingController usernameOrEmail = TextEditingController();
  TextEditingController password = TextEditingController();

  Future loginUser() async {
    const url = 'http://162.214.68.103:7005/maxim-api/maxim/api/auth/signin';

    print("Stat");
    var response = await http.post(Uri.parse(url), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
      body: jsonEncode(<String, String>{
        'usernameOrEmail': usernameOrEmail.text,
        'password':password.text
      }),);
    if (response.statusCode == 200) {
      var loginArr = json.decode(response.body);
      print("accessToken");
      // print("login sucess");
      print(loginArr['accessToken']);
      // _showSuccessAlert(context);
      print("Login success");
      // Navigator.pushReplacementNamed(context, '/menu');

    } else {
      print(response.body);
      print("Login fail");
    }
    print("END");



  }

  void _showSuccessAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Successful'),
          content: Text('You have successfully logged in!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
