import 'dart:convert';

import 'package:http/http.dart' as http; // aliancing

const API_URL = "https://jsonplaceholder.typicode.com/posts";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((res) {
        var rawData = res.body;
        var decodedData = jsonDecode(rawData);
        print(decodedData.runtimeType); // List<dynamic> => List<Post>
      })
      .catchError((e) => print(e));
}

class Post {
  String title, body;
  int userId, id;

  Post({
    required this.title,
    required this.body,
    required this.userId,
    required this.id,
  });
}

// var post = new Post(title: "Tone", body: "Bone", userId: 1, id: 2);
// var post2 = new Post(title: "Ttwo", body: "Btwo", userId: 2, id: 2);
/*
  Method 1 =>

  String? title;
  String? body;
  int? userId;
  int? id;

  Method 2 =>
  
  late String title;
  late String body;
  late int userId;
  late int id;

  */
