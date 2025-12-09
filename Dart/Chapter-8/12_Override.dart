import 'dart:async';

class Hr {
  String name = "Gyra";
  int age = 38;
  output() {
    print(
      "Hr is hiring the new developer , her name is $name and she is $age years",
    );
  }
}

class Developer extends Hr {
  // Developer -> Sub Class, Derive Class, Child Class
  // Hr -> Super Class, Parent Class
  @override
  output() {
    print("This is testing override output from Hr Class");
  }
}

class TestOverride extends Hr {
  @override
  String name = "Vice";
  int age = 30;
  output() {
    print("New hr is $name and he is $age years");
  }
}

void main() {
  Developer dev = new Developer();
  dev.output();

  TestOverride over = new TestOverride();
  print(over.name);
  print(over.age);
  over.output();
}
