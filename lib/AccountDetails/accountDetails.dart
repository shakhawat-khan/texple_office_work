
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/AccountDetails/appBar.dart';

class getListViewClass extends StatelessWidget {
  const getListViewClass({Key? key}) : super(key: key);



  @override

  Widget build(BuildContext context) {
    return ListView(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,

      children:

      ListTile.divideTiles(context:context,
          tiles:
          [
            ListTile(
              title: Text("DHT Recharge"),
              trailing: Text("245"),
            ),
            ListTile(
              title: Text("Salary Credited"),
              trailing: Text("245"),
            ),
            ListTile(
              title: Text("Mobile Recharge"),
              trailing: Text("245"),
            ),

          ]
      ).toList(),

    );

  }

}


class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          Container(
            padding: EdgeInsets.all(20.0),
            margin:EdgeInsets.fromLTRB(0,30,0,0),
            height: 80,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red[100],
              border: Border.all(
                color: Colors.red
              )
            ),

            child: Text("Total Balance: "),
          ),

          Container(
            
            margin: EdgeInsets.fromLTRB(0, 30, 0,0),
            child: getListViewClass(),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black
              )
            ),
            ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(
            Icons.add,
            size: 50,
        ),
        backgroundColor: Colors.black,
      ) ,


    );
  }
}
