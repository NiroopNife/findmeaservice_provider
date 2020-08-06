import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class OneTimeValidation6 extends StatefulWidget {
  @override
  _OneTimeValidation6State createState() => _OneTimeValidation6State();
}

class _OneTimeValidation6State extends State<OneTimeValidation6> {

  DateTime _selectedDateTime = DateTime.now();
  var _value = false;
  void _valueChanged(bool value) => setState(() => _value = value);


  @override
  Widget build(BuildContext context) {

    final String formattedDate = DateFormat.yMMMMd().format(_selectedDateTime);
    final selectedText = Text('You selected: $formattedDate');

    final expiryTile = Material(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Expiry Date : ',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey),
            ),
          ),
          SizedBox(height: 20,),
          CupertinoDateTextBox(
              initialValue: _selectedDateTime,
              onDateChange: onExpiryChange,
              hintText: DateFormat.yMMMMd().format(_selectedDateTime)),
        ],
      ),
    );

    print('One Time Validation6');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('STEP 6', style: TextStyle(color: Colors.grey),),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                Text(
                  'Enter the licence number of the service you are providing',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
                SizedBox(height: 40,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Licence Number',
                      hintText: 'XX-XXXX-XXXX',
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(height: 30,),
                expiryTile,
                SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _value,
                      onChanged: (bool value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'I do accept for the ',
                          style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    decoration:
                                    TextDecoration.underline))
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      Alert(
                        context: context,
//                        type: AlertType.warning,
                        title: "INFO!",
                        desc: "Free subscription will expire in 30 days, free subscription is for 30 days and it starts from the day they press submit",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "OKAY",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                            width: 120,
                          )
                        ],
                      ).show();
                    },
                    color: Colors.deepOrangeAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Text('SUBMIT',
                          style:
                          TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onExpiryChange(DateTime expiry) {
    setState(() {
      _selectedDateTime = expiry;
    });
  }

}
