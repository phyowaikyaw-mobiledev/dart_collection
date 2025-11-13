void main() {
  // 1. Program starts here
  next(); // 2. Calls next() function
} // 4. Program ends here

void next() {
  // 3. Execute this function
  var chapter = "Deep Dive Dart";
  print(chapter); // Output: Deep Dive Dart
}

/*
  What is main() Function?

  -main() is the entry point of every Dart program
  -Program execution starts from main() function
  -Every Dart program must have a main() function
  -When you run the program, Dart automatically calls main() first

  Execution Order :

  main() starts → main() 
  Calls next() → next() 
  next() executes → next() run 
  Returns to main() → main()
  main() ends → main()
  Program terminates → Program Stop.

  Key Points :

  void function returns nothing.
  main () -> Program starting point.
  Without main() -> Program cannot run.
  main() can call other functions

  Different main() Variations :

  // 1. Simple main 
        void main() {
          print("Hello");
        }

// 2. Main with parameters 
        void main(List<String> arguments) {
          print(arguments);
        }

// 3. Async main (asynchronous main)
        Future<void> main() async {
          await someAsyncFunction();
        }

*/
