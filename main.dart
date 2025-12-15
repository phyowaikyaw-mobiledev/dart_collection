import 'dart:convert';

import 'package:http/http.dart' as http;

import 'User.dart'; // aliancing

const USER_API = "https://randomuser.me/api/?results=50";

void main() async {
  await http
      .get(Uri.parse(USER_API))
      .then((response) {
        var rawData = response.body;
        var decodedData = jsonDecode(rawData)['results'];
        List<dynamic> lisy = decodedData as List;
        List<User> users = lisy.map((u) => User.from(u)).toList();
        users.forEach((user) => print(user.location?.city));
      })
      .catchError((e) => print(e));
}
