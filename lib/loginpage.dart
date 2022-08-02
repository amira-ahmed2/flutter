import 'dart:html';

import 'package:appdayone/messanger.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  Loginpage({Key? key}) : super(key: key);
  TextEditingController _emailcon = TextEditingController();
  TextEditingController _passwordcon = TextEditingController();
  GlobalKey<FormState> _Key = GlobalKey<FormState>(); // validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.amber,
          centerTitle: true,
          title: Text(
            "login",
            style: TextStyle(fontSize: 30),
          ),
        ), //end
        // body
        body: Form(
            key: _Key,
            // width: double.infinity,
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        width: 180,
                        height: 180,
                        image: NetworkImage(
                            "https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg")),
                    TextFormField(
                      controller: _emailcon,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please inter you email';
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          label: Text("email"),
                          hintText: "enter your email",
                          // helperText: "please enter email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _passwordcon,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please inter you Password';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                          label: Text("password"),
                          hintText: "enter your password",
                          helperText: "please enter password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * (50 / 100),
                      height: MediaQuery.of(context).size.height * (9 / 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Messanger()));
                          // print(_emailcon);
                          // print(_passwordcon);
                          if (_Key.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Messanger()));
                          }
                        },
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // InkWell(
                    //   onTap: () {
                    //     print("22");
                    //   },
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width * (50 / 100),
                    //     height: MediaQuery.of(context).size.height * (9 / 100),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.amber,
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         "logout",
                    //         style: TextStyle(fontSize: 25),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                            onPressed: () {},
                            child: Text("Forget password",
                                style: TextStyle(color: Colors.black))),
                        SizedBox(
                          width: 15,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Sign up",
                                style: TextStyle(color: Colors.black))),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
