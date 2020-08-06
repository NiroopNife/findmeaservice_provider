import 'my_quotes_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyQuotesScreen extends StatefulWidget {
  @override
  _MyQuotesScreenState createState() => _MyQuotesScreenState();
}

class _MyQuotesScreenState extends State<MyQuotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'My Quotes',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(16), itemBuilder: (context, i) {
            return Container(
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyQuotesDetailsScreen())),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Requesting Quote for : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: 'Name of the Service', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500))
                                ]
                            ),
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Customer Name : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: 'Name of the Customer', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500))
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Suburb : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: '1234', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500))
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Contact number : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: '04 12 123456987', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500))
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
      }),
    );
  }
}
