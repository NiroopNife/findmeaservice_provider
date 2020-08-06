import 'dart:io';

import 'package:filter_list/filter_list.dart';
import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/dashboard/bottomnavigation/business/work_images_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class BusinessProfileScreen extends StatefulWidget {
  @override
  _BusinessProfileScreenState createState() => _BusinessProfileScreenState();
}

class _BusinessProfileScreenState extends State<BusinessProfileScreen> {
  File imageFile;
  List<Asset> images = List<Asset>();
  String _error = 'No Error Detected';
  List<String> servicesList = [
    'Waiter', 'Paramedic', 'Dentist', 'Train conductor', 'Nurse', 'Electrician', 'Doctor', 'Businessman',
    'Student', 'Surgeon', 'Doorman', 'Secretary', 'Soldier', 'Repairman', 'Scientist', 'Reporter', 'Construction worker',
    'Professor', 'Police officer', 'Postman', 'Photographer', 'Pilot', 'Catholic nun', 'Painter', 'Mechanic', 'Magician',
    'Lifeguard', 'Lunchroom supervisor', 'Clown', 'Housekeeper', 'Gardener', 'Forest ranger', 'Builder', 'Foreman', 'Farmer',
    'Flight attendant', 'Fireman', 'Engineer', 'Carpenter', 'Architect', 'Cameraman', 'Diver', 'Salesman', 'Librarian'
  ];
  List<String> selectedServicesList = [];

  List<String> statesList = [
    'New South Wales', 'Victoria', 'Queensland', 'Western Australia', 'South Australia', 'Tasmania',
  ];
  List<String> selectedStatesList = [];

  List<String> suburbList = [
    '1515', '6546', '4514', '1555', '5225', '4151', '4513', '6515', '4125', '7545', '4515', '5744', '7548', '4512', '7455', '5856',
    '5515', '4546', '3514', '7555', '7225', '3151', '9513', '3515', '1125', '9545', '6515', '5744', '6548', '2512', '3455', '7856',
    '5715', '4556', '3594', '7535', '7227', '3159', '9543', '3545', '1925', '9595', '6415', '5714', '6648', '2542', '3955', '7876',
  ];

  List<String> selectedSuburb = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'My Business Profile',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Business Name : ', style: TextStyle(color: Colors.grey),),
                  Row(
                    children: <Widget>[
                      Text('Name of the Business', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                      SizedBox(width: 10,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.edit, color: Colors.grey,),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('About Business : ', style: TextStyle(color: Colors.grey,), ),
                      IconButton(icon: Icon(Icons.edit, color: Colors.grey,),)
                    ],
                  ),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Pledge : ', style: TextStyle(color: Colors.grey,), ),
                      IconButton(icon: Icon(Icons.edit, color: Colors.grey,),)
                    ],
                  ),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                  Divider(),
                  Text('Business Logo : ', style: TextStyle(color: Colors.grey),),
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
                  Text('Business Cover Image : ', style: TextStyle(color: Colors.grey),),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Work Images', style: TextStyle(color: Colors.grey),),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => WorkImagesScreen())),
                              child: Text('View All', style: TextStyle(color: Colors.grey),)),
                          IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.grey,), onPressed: (){},),
                        ],
                      )
                    ],
                  ),
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
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Services you provide',
                        style: TextStyle(
                            color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: _openServiceList,
                        icon: Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 5/3,
                      children: selectedServicesList.map((String value) {
                        return Card(
                          elevation: 2,
                          color: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.all(10.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                value, style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Area of Operation you provide',
                        style: TextStyle(
                            color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: _openStatesList,
                        icon: Icon(
                          Icons.add_location,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.2,
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 5 / 3,
                      children: selectedStatesList.map(
                            (String value) {
                          return Card(
                            elevation: 2,
                            color: Colors.grey[100],
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(10.0),
                            child: Container(
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Suburb you provide service',
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: _openSuburbList,
                          icon: Icon(
                            Icons.add_location,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.4,
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 5 / 3,
                      children: selectedSuburb.map(
                            (String value) {
                          return Card(
                            elevation: 2,
                            color: Colors.grey[100],
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(10.0),
                            child: Container(
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Divider(),
                  Text(
                    'Licence number of the service you are providing',
                    style: TextStyle(
                        color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('98 56 4875 121', style: TextStyle(color: Colors.grey),),
                      IconButton(icon: Icon(Icons.edit, color: Colors.grey,),)
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ],
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

  void _openServiceList() async {
    var list = await FilterList.showFilterList(
      context,
      allTextList: servicesList,
      height: MediaQuery.of(context).size.height * .8,
      headlineText: 'Select the Service',
      searchFieldHintText: 'Search here',
      selectedTextList: selectedServicesList,
    );
    if (list != null) {
      setState(() {
        selectedServicesList = List.from(list);
      });
    }
  }

  void _openStatesList() async {
    var list = await FilterList.showFilterList(
      context,
      allTextList: statesList,
      selectedTextList: selectedStatesList,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.8,
      headlineText: 'Select the State or States you provide service',
      searchFieldHintText: 'Search here',
    );
    if (list != null) {
      setState(() {
        selectedStatesList = List.from(list);
      });
    }
  }

  void _openSuburbList() async {
    var list = await FilterList.showFilterList(
      context,
      allTextList: suburbList,
      selectedTextList: selectedSuburb,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.8,
      headlineText: 'Select the Suburb or Suburbs you provide service',
      searchFieldHintText: 'Search here',
    );
    if(list != null){
      setState(() {
        selectedSuburb = List.from(list);
      });
    }
  }

}
