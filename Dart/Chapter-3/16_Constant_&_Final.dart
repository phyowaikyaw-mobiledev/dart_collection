void main() {
  // final -> Compile Time -> Runtime
  final name = "Andrew"; // ok
  final date = DateTime.now(); // ok-value is set at runtime
  // name = "MgMg";        // It will show error becuase can be assigend only one.
  print("$name & $date");
  // const -> Compile Time => Implicitly [auto]
  const pi = 3.14; // ok
  const username = "Andrew"; // ok
  // const time = DateTime.now(); // Error! -> value is set at runtime.
  print("$pi & $username");

  const list1 = [1, 2, 3];
  const list2 = [1, 2, 3];
  // list1 and list2 are pointing save memory location.
  print("$list1 & $list2");
}

/* The Difference of const and final 

    final      
                                                                           
    -Value is set at runtime (when program runs)
    -Can be assigned only once
    -Value is immutable (cannot change after assignment)
    -Can use with instance variables

    const

    -Value is set at compile time (before program runs)
    -Creates compile-time constant
    -Must know value before running
    -More memory efficient (shares same object)
    -Cannot use with instance variables

    Key Difference Between final and const 

    Feature                         Final                       Const
    When Set                        Runtime                     Compile Time
    Value Known                     When Runtime                When Coding
    Instance Variable               OK                          No
    Memory                          Each Object                 Shared
    Use case                        Dynamic values              Fixed constants

    When To Use?

    Use final:

    User input values
    Current time/date
    API responses
    Instance variables

    Use const:

    Fixed numbers (pi, max values)
    Fixed strings
    Configuration values
    Widget trees (Flutter)

    final userName = getUserInput();      // Runtime value
    const maxAttempts = 3;               // Fixed constant

    // In Flutter
    const Text("Hello");                 // const widget
    final user = User.fromApi();        // Runtime data
    
*/
