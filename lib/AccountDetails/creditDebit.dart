import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled1/AccountDetails/transaction/totalBalance.dart';
import 'transaction/credit.dart';
import 'transaction/debit.dart';

class CreditDebit extends StatefulWidget {
  const CreditDebit({Key? key}) : super(key: key);

  @override
  _CreditDebitState createState() => _CreditDebitState();
}

class _CreditDebitState extends State<CreditDebit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CreditDebit"),
      ),

      body: Column(
        children: [
          Container(
            child: Text('what do you want debit or credit ?'),
          ),

          Container(
            child: ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreditAmount()));
            },
                child: Text("credit")),
          ),

          Container(
            child: ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DebitAmount()));
            },
                child: Text("debit")),

          ),

          Container(
            child: ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TotalBalance()));
            },
                child: Text("total balance")),
          )



        ],
      ),


    );
  }
}
