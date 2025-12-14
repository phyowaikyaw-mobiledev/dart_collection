mixin AA {
  String name = "Andrew";
  outPut() {
    print("Mixin testing & Developer is $name");
  }
}

class BB with AA {
  // implements => for interface
  // Extends => class , abstract class
  // with => mixin
}

void main() {
  var bb = new BB();
  print(bb.name);
  bb.outPut();
}
