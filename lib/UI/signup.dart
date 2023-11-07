import 'package:assignments_sep2/UI/login.dart';
import 'package:flutter/material.dart';

import 'login_signup.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  BackButton( onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signup()));},
          color: Colors.black,
        ),
        title: const Text("Signup Page"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100,),
          Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
          SizedBox(height: 20,),
          Text('Create an Account, Its free'),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 600.0, right: 600, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                labelText: 'Username',
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 600.0, right: 600, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Passsword',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 600.0, right: 600, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Passsword',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          MaterialButton(
              minWidth: 170,
              height: 50,
              color: Colors.red,
              shape: const StadiumBorder(),
              onPressed: (){},
          child: Text('Sign Up'),),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
          },

              child: RichText(text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    TextSpan(text: "Already have an account?"),
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(fontWeight: FontWeight.bold)
                    )
                  ]
              )))
        ],
      ),
    );
  }
}
