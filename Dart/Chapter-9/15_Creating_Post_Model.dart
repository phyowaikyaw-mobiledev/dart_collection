import 'dart:convert';

import 'package:http/http.dart' as http; // aliancing

const API_URL = "https://jsonplaceholder.typicode.com/posts";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((response) {
        var rawData = response.body; // String -> JsonEncode
        var decodedData = jsonDecode(
          rawData,
        ); // String -> decode -> JSON Object
        List<Post> posts = [];
        decodedData.forEach((data) {
          print(data);
          var post = new Post(
            userId: data["userId"],
            id: data['id'],
            title: data["title"],
            body: data["body"],
          );
          posts.add(post);
          print(post.id);
        });
        print("There are ${posts.length}");
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
}
