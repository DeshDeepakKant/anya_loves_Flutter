import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:p2/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;

  GlobalKey<FormState> final_formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
       var formKey;
       if(formKey.currentState.validate()){
         setState(() {
           changeButton=false;
         });
       }
  }



   // const ({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.purpleAccent,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return " empty";
                        }
                        return null;

                      },
                      onChanged: (value) {
                        name: value;

                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "password",
                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return " empty";
                        }
                        return null;

                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      onTap: ()  async {
                      setState(() {
                        changeButton=true;
                      });
                      await Future.delayed(Duration(seconds: 1)) ;




                   Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration:Duration(seconds: 1) ,
                        width: changeButton?100:140,
                        height: 40,
                        alignment: Alignment.center,
                        child:changeButton?Icon(Icons.done,color: Colors.white,) :Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,

                          borderRadius: BorderRadius.circular(changeButton?20:10),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text("Login"),
                    //
                    //     style: TextButton.styleFrom(mini mumSize: Size(150, 40)))
                  ],
                )),
          ],
        )));
  }
}
