import 'package:appdayone/model/models.dart';
import 'package:flutter/material.dart';

class NormalUsers extends StatelessWidget {
  NormalUsers({Key? key}) : super(key: key);
  List<normalUserModel> users = [
    normalUserModel(id: 2, title: "omnis laborum odio"),
    normalUserModel(id: 32, title: "omnis laborum odio"),
    normalUserModel(id: 6, title: "omnis laborum odio"),
    normalUserModel(id: 3, title: "omnis laborum odio")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: Text("Albums"),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 5,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                CircleAvatar(
                  child: Text(users[index].id.toString()),
                  backgroundColor: Colors.teal[700],
                  radius: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("title : ${users[index].title}")
              ],
            );
          },
        ));
  }
}
