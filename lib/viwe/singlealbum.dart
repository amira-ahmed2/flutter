import 'package:appdayone/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingleAlbum extends StatelessWidget {
  SingleAlbum({Key? key, required this.album}) : super(key: key);
  Albums album;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Album Detils"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Title : $album.title"),
        )
      ]),
    );
  }
}
