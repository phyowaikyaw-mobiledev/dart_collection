import 'dart:io';

var index = 0;

void main() {
  print("will sleep 5 seconds");
  sleep(Duration(seconds: 5));
  print("After sleeping 5 seconds");

  var names = ["Aung Aung", "Mg Mg", "Htun Htun", "Su SU"];
  names.forEach((names) {
    sleep(Duration(seconds: 2));
    print(names);
  });
}
