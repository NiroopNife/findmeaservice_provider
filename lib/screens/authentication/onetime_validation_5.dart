import 'onetime_validation_6.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';

class OneTimeValidation5 extends StatefulWidget {
  @override
  _OneTimeValidation5State createState() => _OneTimeValidation5State();
}

class _OneTimeValidation5State extends State<OneTimeValidation5> {
  List<String> statesList = [
    'New South Wales',
    'Victoria',
    'Queensland',
    'Western Australia',
    'South Australia',
    'Tasmania',
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
    print('One Time Validation5');
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
          'STEP 5',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Text(
                        'Select the Area of Operation you provide',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: _openStatesList,
                        icon: Icon(
                          Icons.add_location,
                          color: Colors.blueGrey,
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
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Text(
                        'Select the Suburb you provide',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: _openSuburbList,
                        icon: Icon(
                          Icons.add_location,
                          color: Colors.blueGrey,
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
                Align(
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
                                        OneTimeValidation6()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'STEP 6',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
