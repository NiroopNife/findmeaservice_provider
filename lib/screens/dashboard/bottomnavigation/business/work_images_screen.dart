import 'package:flutter/material.dart';

class WorkImagesScreen extends StatefulWidget {
  @override
  _WorkImagesScreenState createState() => _WorkImagesScreenState();
}

class _WorkImagesScreenState extends State<WorkImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text('Work Images', style: TextStyle(color: Colors.grey),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add, color: Colors.grey,), onPressed: (){},)
        ],
      ),
      body: GridView.count(crossAxisCount: 3, children: List.generate(20, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Container(
            child: Image.network('https://threebestrated.in/images/RajuElectrician-Kolkata-WB.jpeg'),
          ),
        );
      }),),
    );
  }
}
