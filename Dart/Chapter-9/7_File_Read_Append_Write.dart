import 'dart:io';

var fileName = "test.txt";

void main() async {
  FileHandler handler = new FileHandler();
  bool result = await handler.writeFile(
    fileName,
    "Hello ,the lesson is about dart file read, write and append. Keep on your step",
  );

  bool result1 = await handler.appendFile(fileName, " New Append Text ");
  String result2 = await handler.readFile(fileName);
  print(result);
  print(result1);
  print(result2);
  // var para =
  //     """ Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  // Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
  // when an unknown printer took a galley of type and scrambled it to make a type specimen book.
  // It has survived not only five centuries, but also the leap into electronic typesetting,
  // remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing
  // Lorem Ipsum passages,
  // and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. """;
  //  var bol = await writeFile("text.txt", para );

  // var result = bol ? "success" : "fail";
}

class FileHandler {
  Future<bool> writeFile(String filePath, String data) async {
    File f = new File(filePath);
    await f.writeAsString(data);
    return true;
  }

  Future<bool> appendFile(String filePath, String data) async {
    File f = new File(filePath);
    await f.writeAsString(data, mode: FileMode.append);
    return true;
  }

  Future<String> readFile(String filePath) async {
    File f = new File(filePath);
    var data = await f.readAsString();
    return data;
  }
}
