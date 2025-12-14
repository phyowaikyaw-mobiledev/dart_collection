import 'package:http/http.dart' as http; // -> aliancing

const API_URL = "https://jsonplaceholder.typicode.com/posts";

void main() async {
  http.Response response = await http.get(Uri.parse(API_URL));
  print(response.body);
  print(response.statusCode);
  print(response.runtimeType);
}
