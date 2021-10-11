import 'package:flutter/material.dart';
import 'AccountDetails/accountDetails.dart';
import 'package:http/http.dart' as http;


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  //final GlobalKey<FromState> _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(
              child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget> [

                    Container(
                      child: Icon(

                        Icons.call,
                        size: 40,
                      ),
                    ),

                    Container(
                      width: 250.0,
                      child: TextFormField(

                        decoration: InputDecoration(
                          hintText: "Enter your phone-number",
                          labelText: "phone-number",

                        ),
                        keyboardType: TextInputType.number ,
                        maxLength: 10,

                      ),
                    ),
                  ]
              ),

            ),

            Container(
              margin: EdgeInsets.all(25),
              child: ElevatedButton(
                onPressed: ()
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => AccountDetails()
                      )
                  );

                },
                child: Text('Register',style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.blue,


                ),

              ),
            )

          ],
        )



    );
  }
}