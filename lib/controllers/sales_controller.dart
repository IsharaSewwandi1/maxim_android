import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SalesController {

  Future salesSummery() async {
    const url = 'http://162.214.68.103:7005/maxim-api/maxim/api/v1/invoice/summery?startDate=2023-08-01&endDate=2023-08-10';
    const bearerToken = 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWF0IjoxNjkxNjQ1NDQ5LCJleHAiOjE2OTE3MzE4NDl9.u91aM82NdjnANduuSMBRW7lbiV5yPaNMlVHyE5uruL0mDsIE8jbW24vVjzC3lpxI48CXBtAYAQmHQfkaZW_LUA';
    print("Stat");
    var response = await http.get(Uri.parse(url), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
     );
    if (response.statusCode == 200) {
      var loginArr = json.decode(response.body);

      print("data load");
    } else {
      print(response.body);
      print("loading fail");
    }
    print("END");



  }


}
