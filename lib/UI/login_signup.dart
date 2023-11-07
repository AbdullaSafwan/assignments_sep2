import 'package:assignments_sep2/UI/signup.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class login_signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello There!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const SizedBox(height: 20,),
            Text(
                'Automatic identity verification which enable you to verify your identity'),
            const SizedBox(height: 20,),
            const Image(image: AssetImage('assets/icons/study_icon-r.png')),
            SizedBox(height: 20,),
            MaterialButton(
              minWidth: 170,
              height: 50,
              color: Colors.blue,
              shape: const StadiumBorder(),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              minWidth: 170,
              height: 50,
              color: Colors.red,
              shape: const StadiumBorder(),
              onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signup()));},
              child: Text(
                'Sign UP',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
