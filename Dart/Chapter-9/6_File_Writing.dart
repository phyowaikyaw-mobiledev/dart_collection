/*
  File name , File path
  test.txt , "hello world"

*/

import 'dart:io';

Future<bool> writeFile(String filePath, String data) async {
  File f = new File(filePath);
  await f.writeAsString(data);
  return true;
}

void main() async {
  String para =
      """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
  when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
  It has survived not only five centuries, but also the leap into electronic typesetting, 
  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
  Lorem Ipsum passages, 
  and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. """;
  var bol = await writeFile("text.txt", para);
  var result = bol ? "success" : "fail";
  print(result);
}
