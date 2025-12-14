import 'dart:convert';

import 'package:http/http.dart' as http;

const API_URL = "https://jsonplaceholder.typicode.com/comments";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((response) {
        var rawData = response.body;
        List decodedData = jsonDecode(rawData) as List;
        List<Comment> comment = decodedData
            .map((c) => Comment.from(c))
            .toList();
        print(comment.length);
      })
      .catchError((e) => print(e));
}

class Comment {
  int postId, id;
  String name, email, body;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.from(dynamic data) {
    return Comment(
      postId: data['postId'],
      id: data['id'],
      name: data['name'],
      email: data['email'],
      body: data['body'],
    );
  }
}
