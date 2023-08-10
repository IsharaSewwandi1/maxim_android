import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import '../controllers/sales_controller.dart';

void main() => runApp(GatePassPage());

class GatePassPage extends StatelessWidget {
  const GatePassPage({Key? key}) : super(key: key);

  void _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    SalesController salesController = SalesController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Approve Gate Pass'),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 30.0,
              dataRowHeight: 40.0,
              columns: [
                DataColumn(
                  label: Text('Reference'),
                ),
                DataColumn(
                  label: Text('Type'),
                ),
                DataColumn(
                  label: Text('Date'),

                ),
                DataColumn(
                  label: Text('Actions'), // Add a column for actions
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("CS")),
                  DataCell(Text("250")),
                  DataCell(Text("25980")),
                  DataCell(ButtonBar(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await salesController.salesSummery();
                          // _showSuccessAlert(context); // Display alert after successful login
                        },
                        child: Text('View'),
                      ),
                    ],
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text("Sales")),
                  DataCell(Text("500")),
                  DataCell(Text("54678")),
                  DataCell(ButtonBar(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle button click
                        },
                        child: Text('View'),
                      ),
                    ],
                  )),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
