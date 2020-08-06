import 'file:///D:/Nife/FlutterProjects/findmeaservice_provider/lib/screens/dashboard/home/quotes/quote_request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../home/leads/leads_screen.dart';

class PaymentsScreen extends StatefulWidget {
  @override
  _PaymentsScreenState createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey),
          title: Text('My Payments', style: TextStyle(color: Colors.grey),),
          bottom: TabBar(
            indicatorColor: Colors.blueGrey,
            labelColor: Colors.blueGrey,
            tabs: <Widget>[
              Tab(text: 'PAYMENTS'),
              Tab(text: 'INVOICE'),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          curve: Curves.easeOutExpo,
          overlayColor: Colors.black54,
          children: [
            SpeedDialChild(
              child: Icon(Icons.attach_money),
              label: 'New Payment'
            ),
            SpeedDialChild(
              child: Icon(Icons.assignment),
              label: 'New Invoice'
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Text('Payments'),
            Text('Invoice'),
          ],
        ),
      ),
    );
  }
}
