import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeadsScreen extends StatefulWidget {
  @override
  _LeadsScreenState createState() => _LeadsScreenState();
}

class _LeadsScreenState extends State<LeadsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemBuilder: (context, i){
        return Container(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
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
                      ),),
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
                            TextSpan(text: '0425 XXX XXX', style: TextStyle(color: Colors.blueGrey, decoration: TextDecoration.underline, fontWeight: FontWeight.w500))
                          ]
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child:  GestureDetector(
                        onTap: (){
                          return showDialog<void>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('Reject Lead?'),
                                content: Text('Are you sure to reject the lead?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text('OK'),
                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            }
                          );
                        },
                        child: Text('Reject Lead', style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.w500),)),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
