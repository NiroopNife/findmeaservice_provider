import 'package:filter_list/filter_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onetime_validation_5.dart';

class OneTimeValidation4 extends StatefulWidget {
  @override
  _OneTimeValidation4State createState() => _OneTimeValidation4State();
}

class _OneTimeValidation4State extends State<OneTimeValidation4> {
  List<String> servicesList = [
    'Waiter',
    'Paramedic',
    'Dentist',
    'Train conductor',
    'Nurse',
    'Electrician',
    'Doctor',
    'Businessman',
    'Student',
    'Surgeon',
    'Doorman',
    'Secretary',
    'Soldier',
    'Repairman',
    'Scientist',
    'Reporter',
    'Construction worker',
    'Professor',
    'Police officer',
    'Postman',
    'Photographer',
    'Pilot',
    'Catholic nun',
    'Painter',
    'Mechanic',
    'Magician',
    'Lifeguard',
    'Lunchroom supervisor',
    'Clown',
    'Housekeeper',
    'Gardener',
    'Forest ranger',
    'Builder',
    'Foreman',
    'Farmer',
    'Flight attendant',
    'Fireman',
    'Engineer',
    'Carpenter',
    'Architect',
    'Cameraman',
    'Diver',
    'Salesman',
    'Librarian'
  ];
  List<String> selectedServicesList = [];

  @override
  Widget build(BuildContext context) {
    print('One Time Validation4');
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
            'STEP 4',
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
                      Text(
                        'Select the Services you provide',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: _openServiceList,
                        icon: Icon(
                          Icons.add,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
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
                                          OneTimeValidation5()));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'STEP 5',
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
        ));
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
}
