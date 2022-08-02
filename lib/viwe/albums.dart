import 'dart:developer';

import 'package:appdayone/model/models.dart';
import 'package:appdayone/services/servic.dart';
import 'package:appdayone/viwe/singlealbum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class albums extends StatefulWidget {
  albums({Key? key}) : super(key: key);

  @override
  State<albums> createState() => _albumsState();
}

class _albumsState extends State<albums> {
  List<Albums> albums = [];
  bool isLoad = false;
  getData() async {
    // album = Servec().ggetAbumeData();
    albums = await albumServec().getAbumeData();
    isLoad = true;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: Text("Albums"),
          centerTitle: true,
        ),
        body: isLoad
            ? ListView.separated(
                itemCount: albums.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SingleAlbum(album: albums[index])));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Text(albums[index].id.toString()),
                          backgroundColor: Colors.teal[700],
                          radius: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        // Expanded(child: Text(albums[index].userId.toString())),
                        Text("Title : ${albums[index].title}")
                      ],
                    ),
                  );
                },
              )
            : Center(child: CircularProgressIndicator()));
  }
}
