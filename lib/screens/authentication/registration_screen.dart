import 'dart:convert';

import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/authentication/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _isHidden = true;
  bool _isLoading = false;
  int selectedJobRadio;
  TextEditingController firstnameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController businessnameController = new TextEditingController();
  TextEditingController abnController = new TextEditingController();
  TextEditingController suburbController = new TextEditingController();

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  setSelectedJobRadio(int value){
    setState(() {
      selectedJobRadio = value;
    });
  }

  register(String firstName, lastName, email, phone, password, businessName, abn, suburb) async {
    Map data = {
      'firstname' : firstName,
      'lastname' : lastName,
      'email' : email,
      'phone' : phone,
      'password' : password,
      'business_name' : businessName,
      'abn' : abn,
      'suburb' : suburb,
    };
    var jsonData = null;
    var response = await http.post('http://127.0.0.1:8000/api/register', body: data);
    if(response.statusCode == 200){
      jsonData = json.decode(response.body);
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => OTPScreen()), (Route<dynamic> route) => false);
      });
    } else {
      print(response.body);
    }
  }


  @override
  Widget build(BuildContext context) {
    print('Registration Screen');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hello There!',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter details for Sign-Up',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      children: <Widget>[
                        Flexible(
                          child: TextFormField(
                            controller: firstnameController,
                            decoration: InputDecoration(
                                labelText: 'First Name',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey))),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Flexible(
                          child: TextFormField(
                            controller: lastnameController,
                            decoration: InputDecoration(
                                labelText: 'Last Name',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey))),
                          ),
                        )
                      ],
                    ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: EdgeInsets.all(10),
                            child: Image.asset('assets/images/ic_australia.png')),
                        SizedBox(width: 10,),
                        Expanded(
                          child : TextFormField(
                            controller: phoneController,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10)
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Phone',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: passwordController,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      ),
                      suffixIcon: IconButton(
                        onPressed: _toggleVisibility,
                        icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: businessnameController,
                    decoration: InputDecoration(
                        labelText: 'Business Name',
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          controller: abnController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(11)
                          ],
                          decoration: InputDecoration(
                              labelText: 'ABN',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        child: TextFormField(
                          controller: suburbController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(4)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Suburb',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Registered for GST', style: TextStyle(color: Colors.black54, fontSize: 18),)),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: selectedJobRadio,
                        activeColor: Colors.blue,
                        onChanged: (val) {
                          setSelectedJobRadio(val);
                        },
                      ),
                      Text('Commercial'),
                      SizedBox(
                        width: 10,
                      ),
                      Radio(
                        value: 2,
                        groupValue: selectedJobRadio,
                        activeColor: Colors.blue,
                        onChanged: (val) {
                          setSelectedJobRadio(val);
                        },
                      ),
                      Text('Residential'),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RaisedButton(
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                        });
//                        register(firstnameController.text, lastnameController.text, emailController.text, phoneController.text, passwordController.text, businessnameController.text, abnController.text, suburbController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen()));
                      },
                      color: Colors.deepOrangeAccent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: const Text('Continue', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text('Will Send you a OTP to your mobile number for verification', textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Text('Already a member? ', style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
