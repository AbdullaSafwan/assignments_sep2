import 'package:assignments_sep2/UI/login_signup.dart';
import 'package:assignments_sep2/UI/signup.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  BackButton( onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signup()));},
          color: Colors.black,
        ),
        title: const Text("Login Page"),
      ),

      body: Column(
        children: [
          SizedBox(height: 100,),
          Text('Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
          SizedBox(height: 20,),
          Text('Welcome back! Login with your credentials'),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 600.0, right: 600, bottom: 10),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    labelText: 'Usernanme',
                    border: OutlineInputBorder())),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 600.0, right: 600, bottom: 10),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    border: OutlineInputBorder())),
          ),
          SizedBox(height: 20,),
        MaterialButton(
            minWidth: 170,
            height: 50,
            color: Colors.blue,
            shape: const StadiumBorder(),
            onPressed: (){},
        child: Text('Login')),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signup()));
          },
              child: RichText(text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 15),
                children: [
                  TextSpan(text: "Don't have an account?"),
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  )
                ]
              )))
        ],
      ),
    );
  }
}
