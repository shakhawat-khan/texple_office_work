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



class CreditAmount extends StatefulWidget {
  const CreditAmount({Key? key}) : super(key: key);


  @override
  _CreditAmountState createState() => _CreditAmountState();
}

class _CreditAmountState extends State<CreditAmount> {


  Future creditAmount()async{

    http.Response response;

    response = await http.post(Uri.parse("$baseUrl/api/credit"),
        headers: {'Authorization' : '$mobileNumber'},
        body: {"amount":"150000","title": "food refund" });

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
    creditAmount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("credit"),
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
