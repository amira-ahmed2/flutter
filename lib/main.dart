import 'package:appdayone/loginpage.dart';
import 'package:appdayone/messanger.dart';
import 'package:appdayone/viwe/screens/layout.dart';
import 'package:appdayone/viwe/screens/normalUsers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LONG IN',
      // home: Messanger(),
      home: MainLayout(),
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}
