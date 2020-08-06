import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String title;

  CustomCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title, style: TextStyle(color: Colors.grey),),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
            ],
          ),
        ),
      ),
    );
  }
}
