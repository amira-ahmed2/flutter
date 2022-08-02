import 'package:appdayone/model/models.dart';
import 'package:dio/dio.dart';

class albumServec {
  String url = "https://jsonplaceholder.typicode.com";
  // String userlink = "users";
  String albumlinl = "albums";
  // List<Albums> albums = [];
 Future<List<Albums>> getAbumeData() async {
    List<Albums> albums = [];
    try {
      var response = await Dio().get("${url}/${albumlinl}");
      response.data.forEach((elem) {
        Albums album = Albums.fromJson(elem);
        albums.add(album);
      });
    } catch (e) {
      print(e.toString());
    }
    return albums;
  }
}

