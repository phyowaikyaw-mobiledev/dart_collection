void main() {
  var a = 9;
  for (var i = 0; i < 10; i++) {
    print(i);
    if (i == 5) {
      break;
    } else {
      print("Continue");
    }
  }
  while (a < 10) {
    a++;
    if (a == 10) {
      print("number reach half of path ");
      continue;
    }
  }
  print("Ha Ha Ha");
}
