abstract class All {
  outPut() {
    // Concrete Method or Non-abstract method
    print("Hey Now"); // abstract method don't have body
  }

  answer();
}

class Wall extends All {
  // abstract class can be inherit
  // AA a = new AA(); -> abstract class can't be instantiate
  @override
  answer() {
    print("I am the override answer");
  }
}

void main() {
  var wall = new Wall();
  wall.outPut();
  wall.answer();
}
