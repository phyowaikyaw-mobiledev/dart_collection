class New {
  String name =
      "Mg Mg"; // instance variable, fields, member variable, properties
  static int age = 23; // class variable

  outPut() {
    print("Non-static variable");
  }

  static answer() // class method / function
  {
    print("Static variable");
  }
}

void main() {
  var n = New();
  print("Name is ${n.name}");
  print(New.age);
  New.answer();
  print(New.answer());
  n.outPut();
}
