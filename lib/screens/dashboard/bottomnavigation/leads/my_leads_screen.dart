import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLeadsScreen extends StatefulWidget {
  @override
  _MyLeadsScreenState createState() => _MyLeadsScreenState();
}

class _MyLeadsScreenState extends State<MyLeadsScreen> {
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
          'My Leads',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(16), itemBuilder: (context, i) {
            return Container(
              child: GestureDetector(
                onTap: (){},
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: RichText(
                            text: TextSpan(
                                text: 'Time Remaining : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '12hrs',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500))
                                ]),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Looking For : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: 'Electrician', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500))
                                ]
                            ),
                          ),
                        ),
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
                                text: 'Contact Number : ',
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: '0425 789 567', style: TextStyle(color: Colors.blueGrey, decoration: TextDecoration.underline, fontWeight: FontWeight.w500))
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
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
