import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/dashboard/home/quotes/give_quote_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuoteRequestDetailsScreen extends StatefulWidget {
  @override
  _QuoteRequestDetailsScreenState createState() => _QuoteRequestDetailsScreenState();
}

class _QuoteRequestDetailsScreenState extends State<QuoteRequestDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Quote Request Details', style: TextStyle(color: Colors.grey),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: RichText(
                  text: TextSpan(
                    text: 'Time Remaining : ', style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: '48hrs', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                      ),
                    ]
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                      text: TextSpan(
                          text: 'Service Looking for : ', style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Name of the Service', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                            ),
                          ]
                      ),
                    ),
              ),
              Divider(),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'Suburb : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: '1234', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'Customer Name : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Name of the Customer', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'Details : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'Type Of Job : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Commercial', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'When Job needs to be done : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'July 30th', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'Budget : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: '\$250', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'When can the service provider visit : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: '10Am - 2PM', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                  child: Text('Images : ', style: TextStyle(color: Colors.grey),)),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.network('https://threebestrated.in/images/RajuElectrician-Kolkata-WB.jpeg',
                        width: 300, height: 200, fit: BoxFit.contain),
                    Image.network('https://www.thespruce.com/thmb/zxC8-axzZE6A-w-HXNVEhLE9O9g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/short-circuit-159142093-resized-56a27fb43df78cf77276bc35.jpg',
                        width: 300, height: 200, fit: BoxFit.contain),

                    Image.network('https://networx.global.ssl.fastly.net/media/500x667/art_5a69e95542ec4.jpeg',
                        width: 300, height: 200, fit: BoxFit.contain),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: 'Contact number : ', style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: '0425 XXX XXX', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    color: Colors.grey[200],
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GiveQuoteScreen()));
                    },
                    child: Text('GIVE QUOTE', style: TextStyle(color: Colors.blue),),
                  ),
                  FlatButton(
                    color: Colors.grey[200],
                    onPressed: (){},
                    child: Text('REJECT QUOTE', style: TextStyle(color: Colors.deepOrangeAccent),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
