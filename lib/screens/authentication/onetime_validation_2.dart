import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'onetime_validation_3.dart';

class OneTimeValidation2 extends StatefulWidget {
  @override
  _OneTimeValidation2State createState() => _OneTimeValidation2State();
}

class _OneTimeValidation2State extends State<OneTimeValidation2> {
  File imageFile;
  var _value = false;
  final picker = ImagePicker();

  void _valueChanged(bool value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    print('One Time Validation2');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'STEP 2',
          style: TextStyle(color: Colors.grey),
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
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Upload your Passport or Driving Licence',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              child: imageFile == null
                                  ? FlatButton(
                                      onPressed: () {
                                        _showDialog();
                                      },
                                      child: Icon(Icons.add_a_photo, size: 80, color: Colors.blueGrey,),
                                    )
                                  : Image.file(imageFile, width: 400, height: 400, fit: BoxFit.contain,),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
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
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(
                                  width: 3,
                                  color: Colors.grey,
                                  style: BorderStyle.solid)),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OneTimeValidation3()));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'STEP 3',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        )
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

  Future<void> _showDialog() {
    return showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        title: Text('Choose the desired option to Upload the Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Gallery'),
                onTap: (){
                  openGallery();
                  },
              ),
              Divider(),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  openCamera();
                },
              )
            ],
          ),
        ),
      );
    });
  }

  Future<void> openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
  }

  Future<void> openCamera() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() { 
      imageFile = picture;
    });
  }
}
