import 'dart:html';

import 'package:appdayone/viwe/screens/massenger/massenger_componant.dart';
import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  Messanger({Key? key}) : super(key: key);
  List<ActiveUser> active = [
    ActiveUser(name: "data"),
    ActiveUser(name: "datadatadatadatadata"),
    ActiveUser(name: "data"),
    ActiveUser(name: "datadatadatadatadatadatadata"),
    ActiveUser(name: "data"),
    ActiveUser(name: "aya"),
    ActiveUser(name: "data"),
    ActiveUser(name: "datadatadatadatadatadatadata"),
    ActiveUser(name: "data"),
    ActiveUser(name: "datadatadatadatadatadatadata"),
    ActiveUser(name: "data"),
    ActiveUser(name: "datadatadatadatadata"),
    ActiveUser(name: "data"),
    ActiveUser(name: "datadatadatadatadatadatadata")
  ];
  List<ChatUser> chatUser = [
    ChatUser(name: "Amira"),
    ChatUser(name: "Ali"),
    ChatUser(name: "Aya"),
    ChatUser(name: "Amira"),
    ChatUser(name: "Ali"),
    ChatUser(name: "Aya"),
    ChatUser(name: "Aya"),
    ChatUser(name: "Amira"),
    ChatUser(name: "Ali"),
    ChatUser(name: "Aya"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // remove back
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.lightBlue,
            ),
            SizedBox(
              width: 15,
            ),
            Text("Chat")
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 16,
                ),
                radius: 40,
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 16,
                ),
                radius: 40,
              )),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(221, 224, 221, 221),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.search),
                    Text("Search")
                  ],
                ),
              ),
            ),
            Container(
              height: 90,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: active.length,
                itemBuilder: (BuildContext context, int index) {
                  return active[index];
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: chatUser.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(padding: EdgeInsets.all(20));
                },
                itemBuilder: (BuildContext context, int index) {
                  return chatUser[index];
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
