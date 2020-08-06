import 'customer_reviews_screen.dart';

import 'contact_us_screen.dart';

import 'basic_profile_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Profile', style: TextStyle(color: Colors.grey),),
      ),
      body:  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Basic Details', style: TextStyle(color: Colors.grey),),
                        IconButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BasicProfileScreen())),
                          icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Stripe Payment', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Customer Reviews', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,), onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerReviewsScreen()));
                        },)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Outside Reviews', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Subscription', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Log in as Customer', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Terms & Conditions', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Privacy Policy', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('FAQ', style: TextStyle(color: Colors.grey),),
                        IconButton(icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Contact Us', style: TextStyle(color: Colors.grey),),
                        IconButton(
                          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsScreen())),
                          icon: Icon(Icons.arrow_forward, color: Colors.grey,),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }


}


