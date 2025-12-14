import 'dart:convert';

import 'package:http/http.dart' as http; // aliancing

const API_URL = "https://jsonplaceholder.typicode.com/posts";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((response) {
        var rawData = response.body; // String -> Json JsonEncode
        List decodedData = jsonDecode(rawData) as List;
        List<Post> posts = decodedData.map((e) => Post.from(e)).toList();
        print(posts.length);
        print(posts.runtimeType); // -> changing List<dynamic> to List<Post>
        posts.forEach((p) => print(p.id));
      })
      .catchError((e) => print(e));
}

class Post {
  String title, body;
  int userId, id;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.from(dynamic data) {
    return Post(
      userId: data["userId"],
      id: data["id"],
      title: data["title"],
      body: data["body"],
    );
  }
}
