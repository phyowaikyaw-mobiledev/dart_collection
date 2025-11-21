class Main {
  var name = "Mg Mg";

  Main(name) {
    // Constructor
    print("I will work when class is being invoked! & $name");
  }

  void runIt() {
    print("I'm runIt method inside of Main Class");
  }
}

void main() {
  new Main(
    "I am Constructor",
  ); // creating class instance object is also invoking class.
}
