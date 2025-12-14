import 'dart:io';

// ignore: unused_import
import 'package:http/http.dart' as http; // aliancing

Future<String> readFile(String filePath) async {
  File f = new File(filePath);
  var data = await f.readAsString();
  return data;
}

void main() async {
  var filePath = "pubspec.yaml";

  // var result = await readFile(filePath);
  // print(result);

  await readFile(
    filePath,
  ).then((value) => print(value)).catchError((e) => print(e));
}
