import 'register.dart';
import 'package:flutter/material.dart';

import 'login.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 100, // Specify the desired radius of the circular avatar
                backgroundImage:  AssetImage('images/logo.png'),
              ),
              SizedBox(height: 30,),
              Text("Welcome to the application,", style: TextStyle(fontSize: 18),),
              Text("Please  log in or sign up in order to continue using the app", style: TextStyle(fontSize: 18)),
              SizedBox(height:30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(250, 40)
                ),
                label: Text('Log In', style: TextStyle(fontSize: 18),),
                onPressed:(){Navigator.push(context,MaterialPageRoute(
                    builder: (context) => const LogIn()),);},
                icon: Icon(Icons.login),
              ),
              Text("If you have an account already", style: TextStyle(fontSize: 10,)),
              SizedBox(height: 10,),
              Text("OR", style: TextStyle(fontSize:13)),
              SizedBox(height: 10,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(250, 40)
                ),
                label: Text('Sign Up', style: TextStyle(fontSize: 18),),
                onPressed:(){Navigator.push(context,MaterialPageRoute(
                    builder: (context) => const Register()),);},
                icon: Icon(Icons.how_to_reg),
              ),
              Text("If you are new", style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
      ),
    );
  }
}
