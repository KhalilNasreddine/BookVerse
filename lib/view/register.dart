import 'package:flutter/material.dart';

import 'login.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  GlobalKey<FormState> _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text("Sign Up Page", style:TextStyle(fontSize: 25, color:Colors.deepPurple)),
          centerTitle: true,
        ),
        body:  ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                  ),
                ),
                const SizedBox(height: 30),
                Form(
                  key: _formkey,
                  child:Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Sign Up to continue using the app",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 20),
                        const Text("UserName",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        const SizedBox(height: 10,),
                        TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                            hintText: "Enter a username",
                            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Email",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            hintText: "Enter an email",
                            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Password",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            hintText: "Enter a password",
                            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      height: 40,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                      color: Colors.deepPurple,
                                      textColor: Colors.white,
                                      onPressed: () async{
                                        if(_formkey.currentState!.validate()) {
                                        }
                                      },
                                      child: const Text("Sign Up"),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        //Text("Don't have an account", style: TextStyle(fontSize: 15),)
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already have an account? "),
                              InkWell(
                                onTap:(){Navigator.pushReplacement(context,MaterialPageRoute(
                                    builder: (context) => const LogIn()),);},
                                child: const Text.rich(
                                  TextSpan(
                                    text: "Log In",
                                    style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
