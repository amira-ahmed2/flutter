import 'package:appdayone/messanger.dart';
import 'package:appdayone/viwe/albums.dart';
import 'package:appdayone/viwe/screens/normalUsers.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _current = 0;
  List screen = [Messanger(), NormalUsers(),albums()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_current],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), label: "account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy), label: "albums"),
              
        ],
        currentIndex: _current,
        onTap: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }
}
