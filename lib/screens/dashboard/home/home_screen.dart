import 'package:flutter/material.dart';
import 'leads/leads_screen.dart';
import 'quotes/quote_request_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading:Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.chat, color: Colors.grey,),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset('assets/images/ic_logo.png', height: 40,),
                )),
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));},
                        child: Text('Service Provider Name', style: TextStyle(color: Colors.grey, fontSize: 15, decoration: TextDecoration.underline),)),
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            indicatorColor: Colors.blueGrey,
            labelColor: Colors.blueGrey,
            tabs: <Widget>[
              Tab(text: 'LEADS'),
              Tab(text: 'QUOTE REQUEST'),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.grey),
        ),
        body: TabBarView(
          children: <Widget>[
            LeadsScreen(),
            QuoteRequestScreen(),
          ],
        ),
      ),
    );
  }
}
