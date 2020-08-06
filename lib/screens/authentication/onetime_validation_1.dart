import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/authentication/onetime_validation_2.dart';
import 'package:flutter/material.dart';

class OneTimeValidation1 extends StatefulWidget {
  @override
  _OneTimeValidation1State createState() => _OneTimeValidation1State();
}

class _OneTimeValidation1State extends State<OneTimeValidation1> {
  @override
  Widget build(BuildContext context) {
    print('One Time Validation1');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Create your Profile',
          style: TextStyle(color: Colors.blueAccent, fontSize: 25),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'STEP 1',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'About Business',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            maxLines: 10,
                            decoration: InputDecoration(
                                labelText: 'Description',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Pledge',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          maxLines: 10,
                          decoration: InputDecoration(
                              labelText: 'Description',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: FractionalOffset.bottomRight,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                border: Border.all(width: 3,color: Colors.grey,style: BorderStyle.solid)
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 30,),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>OneTimeValidation2()));
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('STEP 2', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
