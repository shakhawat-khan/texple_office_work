import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


String stringResponse="";
String baseUrl = "http://13.235.89.254:3001";
int mobileNumber = 1557038556;
Map  mapResponse = {} ;

class DebitAmount extends StatefulWidget {
  const DebitAmount({Key? key}) : super(key: key);

  @override
  _DebitAmountState createState() => _DebitAmountState();
}

class _DebitAmountState extends State<DebitAmount> {

  Future debitAmount()async{

    http.Response response;

    response = await http.post(Uri.parse("$baseUrl/api/debit"),
        headers: {'Authorization' : '$mobileNumber'},
        body: {"amount": "50","title": "DTH Recharge"});

    if(response.statusCode >= 200)
    {
      print(response.statusCode);
      setState(() {
        //stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }

  }
  @override
  void initState() {
    debitAmount();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("debit"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
                mapResponse["message"].toString()
            ),

          ),
          Text("go back check your total balance"),
        ],
      ),
    );
  }
}
