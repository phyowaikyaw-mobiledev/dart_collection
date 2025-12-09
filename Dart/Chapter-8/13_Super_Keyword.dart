class AA {
  String name = "Drew";
  outPut(name) {
    this.name = name;
  }
}

class BB extends AA {
  @override
  outPut(name) {
    super.outPut(name);
    print("Sub BB class name is $name");
  }
}

void main() {
  BB bb = new BB();
  bb.outPut("Andrew");
}

/* class Teacher {
  Teacher() {
    print("I am Teacher constructor!");
  }
  outPut() {
    print("I am Teacher output Method!");
  }
}

class Student extends Teacher {
  Student() {
    print("I am Student constructor!");
  }

  @override
  outPut() {
    super.outPut();
    print("I am Student Output Method");
  }
}

void main() {
  Student student = new Student();
  student.outPut();
}

*/
