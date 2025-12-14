import 'dart:io';

var fileName = "test.txt";

void main() async {
  FileHandler handler = new FileHandler();
  var result = await handler.deleteFile(fileName);
  print(result);
  // var result1 = await handler.readFile(fileName);
  // print(result1);
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
    try {
      File f = new File(filePath);
      if (await f.existsSync()) {
        var data = await f.readAsString();
        return data;
      } else {
        throw ("File Not Found!");
      }
    } catch (e) {
      print(e);
      return '';
    } finally {
      print("File Reading Done");
    }
  }

  Future<bool> deleteFile(String filePath) async {
    try {
      File f = new File(filePath);
      if (await f.existsSync()) {
        await f.delete();
        return true;
      } else {
        throw ("You can't delete the file that doesn't exists");
      }
    } catch (e) {
      print(e);
    } finally {
      print("File Deleting is Done!");
    }
    return true;
  }
}
