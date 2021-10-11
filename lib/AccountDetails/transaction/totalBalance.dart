import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class TotalBalance extends StatefulWidget {
  const TotalBalance({Key? key}) : super(key: key);

  @override
  _TotalBalanceState createState() => _TotalBalanceState();
}

String stringResponse="";
String baseUrl = "http://13.235.89.254:3001";
int mobileNumber = 1557038556;
Map  mapResponse = {} ;


class _TotalBalanceState extends State<TotalBalance> {
  Future totalBalance()async{

    http.Response response;
    response = await http.get(Uri.parse("$baseUrl/api/balance"),headers: {'Authorization' : '$mobileNumber'});


    if(response.statusCode >= 200)
    {
      //print(response.statusCode);
      setState(() {
        //stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }

  }







  @override
  void initState() {
    totalBalance();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("total balance"),
      ),
      body: Center(
        child: Text(
            mapResponse["balance"].toString()
        ),
      ),
    );
  }
}
