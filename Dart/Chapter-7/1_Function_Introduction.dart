/*
  1. Creating a Function
     void greet() {
     print("Hello");
  }

  2. Return Value
     int add(int a, int b) {
     return a + b;
  }

  3. Parameterized Function
     void sayName(String name) {
     print("Hello $name");
  }

  4. Multiple Parameters
     int multiply(int a, int b, int c) {
     return a * b * c;
  }

  5. Named Parameters
     void info({String? name, int? age}) {
     print("$name is $age");
  }
  // Call: info(name: "John", age: 25);

  6. Optional Parameters
     void show(String name, [int? age]) {
     print("$name $age");
  }
  // Call: show("John") or show("John", 25);

  7. Parameters with Default Value
     void greet(String name, [String msg = "Hello"]) {
     print("$msg $name");
  }

  8. Optional and Positional
     Positional: [] | Named: {}

  9. Lambda/Arrow Function
     int square(int x) => x * x;

  10. Main Function with Parameters
      void main(List<String> args) {
      print(args);
  }

  11. Functions as First-Class Objects
      var myFunc = () => print("Hi");
      myFunc();  // Call it

  12. Anonymous Functions
      var list = [1, 2, 3];
      list.forEach((item) {
      print(item);
      });

  13. Lexical Scope
      Variables are accessible within their defined scope (block).
  */
