class New {
  String? name;
  int? age;

  void set setName(String name) {
    this.name = name;
  }

  void set setAge(int age) {
    this.age = age;
  }

  String? get getName {
    return this.name;
  }

  int? get getAge {
    return this.age;
  }
}

void main() {
  var net = New();
  net.setName = "Andrew";
  net.setAge = 23;

  print(net.getName);
  print(net.getAge);
}
