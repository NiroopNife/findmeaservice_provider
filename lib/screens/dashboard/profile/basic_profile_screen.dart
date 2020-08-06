import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BasicProfileScreen extends StatefulWidget {
  @override
  _BasicProfileScreenState createState() => _BasicProfileScreenState();
}

class _BasicProfileScreenState extends State<BasicProfileScreen> {

  int selectedJobRadio;
  File imageFile;

  setSelectedJobRadio(int value){
    setState(() {
      selectedJobRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.grey),
        ),
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
                Text('Name : ', style: TextStyle(color: Colors.grey),),
                Row(
                  children: <Widget>[
                    Text('Name of the Provider', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: Colors.grey,),
                    )
                  ],
                ),
                Divider(),
                Text('Email : ', style: TextStyle(color: Colors.grey),),
                Row(
                  children: <Widget>[
                    Text('provideremail@something.comr', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: Colors.grey,),
                    )
                  ],
                ),
                Divider(),
                Text('Phone : ', style: TextStyle(color: Colors.grey),),
                Row(
                  children: <Widget>[
                    Text('6584131534', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: Colors.grey,),
                    )
                  ],
                ),
                Divider(),
                Text('ABN : ', style: TextStyle(color: Colors.grey),),
                Row(
                  children: <Widget>[
                    Text('74864555262', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: Colors.grey,),
                    )
                  ],
                ),
                Divider(),
                Text('Suburb : ', style: TextStyle(color: Colors.grey),),
                Row(
                  children: <Widget>[
                    Text('1234', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: Colors.grey,),
                    )
                  ],
                ),
                Divider(),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Registered for GST', style: TextStyle(color: Colors.grey),)),
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
                Divider(),
                Text('Driving Licence : ', style: TextStyle(color: Colors.grey),),
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
                  Divider(),
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
