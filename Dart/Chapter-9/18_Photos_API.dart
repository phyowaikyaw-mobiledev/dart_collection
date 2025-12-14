import 'dart:convert';

import 'package:http/http.dart' as http;

const API_URL = "https://jsonplaceholder.typicode.com/photos";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((response) {
        var rawData = response.body;
        List decodedData = jsonDecode(rawData) as List;
        List<Photos> photos = decodedData.map((p) => Photos.from(p)).toList();
        print(photos.length);
        print(photos.runtimeType);
      })
      .catchError((e) => print(e));
}

class Photos {
  int albumId, id;
  String title, url, thumbnailUrl;

  Photos({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photos.from(data) {
    return Photos(
      albumId: data["albumId"],
      id: data["id"],
      title: data["title"],
      url: data["url"],
      thumbnailUrl: data["thumbnailUrl"],
    );
  }
}
