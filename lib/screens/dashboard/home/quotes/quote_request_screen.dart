import 'quote_request_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuoteRequestScreen extends StatefulWidget {
  @override
  _QuoteRequestScreenState createState() => _QuoteRequestScreenState();
}

class _QuoteRequestScreenState extends State<QuoteRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemBuilder: (context, i) {
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
                                text: '48hrs',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Request Quote For : ',
                          style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Electrician',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ),
                  Divider(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Suburb : ',
                          style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                                text: '1234',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Customer Name : ',
                          style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Name of the Customer',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Details : ',
                          style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (contextt) => QuoteRequestDetailsScreen()));
                        },
                        child: Text(
                          'Show More..',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500),
                        ),),
                      GestureDetector(
                        onTap: () {
                          return showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Reject Quote Request?'),
                                  content:
                                  Text('Are you sure to reject the Quote Request?'),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        child: Text(
                          'Reject Quote Request',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.w500),
                        ),),
                    ],
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
