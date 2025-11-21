class Main {
  Main() {
    String name;
    int age;

    print("I am default Constructor");
  }

  Main.second() {
    // Named Constructor
    print("I am named Consturctor that named second");
  }

  Main.third() {
    // Named Constructor
    print("I am third Constructor");
  }

  void outPut() {}
}

void main() {
  new Main();
}

/*
  we can refer class with this keyword -> this = current Object ,do not mean current class
*/
