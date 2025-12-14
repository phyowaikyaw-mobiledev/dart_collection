import 'dart:io';

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
