import 'package:flutter/material.dart';

class GiveQuoteScreen extends StatefulWidget {
  @override
  _GiveQuoteScreenState createState() => _GiveQuoteScreenState();
}

class _GiveQuoteScreenState extends State<GiveQuoteScreen> {
  String value = "";
  bool disabledDropDown = true;
  final fixed = {
    "1" : "Rate per hour",
    "2" : "Total Rate",
  };

  final need_more = {
    "1" : "Service provider will call you",
    "2" : "Need to visit site",
  };

  void populateFixed(){
    for(String key in fixed.keys){
      menuItems.add(DropdownMenuItem<String>(
        value: fixed[key],
        child: Center(
          child: Text(
            fixed[key]
          ),
        ),
      ));
    }
  }


  List<DropdownMenuItem<String>> menuItems = List();

  void valueChanged(_value){
    if(_value == "Fixed"){
      populateFixed();
    }
    setState(() {
      value = _value;
      disabledDropDown = false;
    });
  }

  void secondValueChanged(_value){
    setState(() {
      value = _value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Give Quote', style: TextStyle(color: Colors.grey),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Center(
                      child: Text('Fixed'),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Center(
                      child: Text('Approximate'),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Center(
                      child: Text('Need More'),
                    ),
                  ),
                ],
                onChanged: (_value) => valueChanged(_value),
                hint: Text('Please Select'),
              ),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Center(
                      child: Text('Fixed'),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Center(
                      child: Text('Approximate'),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Center(
                      child: Text('Need More'),
                    ),
                  ),
                ],
                onChanged: disabledDropDown ? null : (_value) => secondValueChanged(_value),
                hint: Text('Please Select'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
