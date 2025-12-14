import 'package:http/http.dart' as http; // -> aliancing

const API_URL = "https://jsonplaceholder.typicode.com/posts";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((res) => print(res.body))
      .catchError((e) => print(e));
}
