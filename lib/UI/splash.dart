import 'dart:async';

import 'package:assignments_sep2/UI/login_signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState  extends State<Splash>{
  @override
  void initState(){
    Timer(Duration(seconds: 3), () { 
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>login_signup()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage('assets/icons/study_icon-r.png')),
      ),
    );
  }
}
