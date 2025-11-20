void main() {
  var name = second();
  var age = third();
  var total = third() + fourth();
  print("Name is $name & age is $age");
  print(total);
}

String second() {
  return "Andrew";
}

int third() {
  return 10;
}

int fourth() {
  return 30;
}

// function return type
