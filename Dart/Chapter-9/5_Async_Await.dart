Future<List<String>> doIt() async {
  await Future.delayed(Duration(seconds: 3));
  return ["Hello", "Kello", "Mello"];
}

void main() async {
  var result = await doIt();
  print(result);
}
