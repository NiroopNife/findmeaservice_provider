import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'onetime_validation_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class OneTimeValidation3 extends StatefulWidget {
  @override
  _OneTimeValidation3State createState() => _OneTimeValidation3State();
}

class _OneTimeValidation3State extends State<OneTimeValidation3> {
  File imageFile;
  File businessLogo;
  File BusinessCover;
  List<Asset> images = List<Asset>();
  String _error = 'No Error Detected';

  @override
  Widget build(BuildContext context) {
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
          'STEP 3',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Upload your Business Logo',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 150,
                            width: 200,
                            child: businessLogo == null
                                ? FlatButton(
                              onPressed: () {
                                _showBusinessLogoDoialog();
                              },
                              child: Icon(
                                Icons.add_a_photo,
                                size: 80,
                                color: Colors.blueGrey,
                              ),
                            )
                                : Image.file(
                              businessLogo,
                              width: 400,
                              height: 400,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Upload your Business Cover Image',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 200,
                            child: BusinessCover == null ? FlatButton(onPressed: (){
                              _showBusinessCoverDialog();
                            },
                              child: Icon(Icons.add_a_photo, color: Colors.blueGrey, size: 80,),
                            ) : Image.file(BusinessCover, width: 400, height: 400, fit: BoxFit.contain,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'Upload your Work Images',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey
                                ),
                              ),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: loadAssets,
                                icon: Icon(Icons.add_a_photo, color: Colors.blueGrey,),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                          Expanded(
                            child: buildGridView(),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topRight,
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
                                            OneTimeValidation4()));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'STEP 4',
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.w500),
                          )
                        ],
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


  Future<void> _showBusinessLogoDoialog() {
    return showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        title: Text('Choose the desired option to Upload the Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Gallery'),
                onTap: (){
                  openLogoGallery();
                },
              ),
              Divider(),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  openLogoCamera();
                },
              )
            ],
          ),
        ),
      );
    });
  }

  Future<void> openLogoGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      businessLogo = picture;
    });
  }

  Future<void> openLogoCamera() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      businessLogo = picture;
    });
  }

  Future<void> _showBusinessCoverDialog() {
    return showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        title: Text('Choose the desired option to Upload the Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Gallery'),
                onTap: (){
                  openCoverGallery();
                },
              ),
              Divider(),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  openCoverCamera();
                },
              )
            ],
          ),
        ),
      );
    });
  }


  Future<void> openCoverGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      BusinessCover = picture;
    });
  }

  Future<void> openCoverCamera() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      BusinessCover = picture;
    });
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 9,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 10/9,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 3),
          child: AssetThumb(
            asset: asset,
            width: 300,
            height: 300,
          ),
        );
      }),
    );
  }

}
