import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Contact Us', style: TextStyle(color: Colors.grey),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your Email",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      cursorColor: Color(0xFFAFDCEC),
                      autofocus: false,
                    )
                ),
                SizedBox(height: 20,),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Subject",
                        hintText: "Enter Subject",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      cursorColor: Color(0xFFAFDCEC),
                      autofocus: false,
                    )
                ),
                SizedBox(height: 20,),
                Container(
                    child: TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        labelText: "Description",
                        hintText: "Enter description",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      cursorColor: Color(0xFFAFDCEC),
                      autofocus: false,
                    )
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      setState(() {

                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                    },
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Text('SUBMIT ', style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
