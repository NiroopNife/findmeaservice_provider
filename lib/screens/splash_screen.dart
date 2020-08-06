import 'dart:async';

import 'package:flutter/material.dart';
import 'authentication/registration_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  initScreen(BuildContext context){
    print('Splash Screen');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/ic_logo.png')
          ],
        ),
      ),
    );
  }

}
