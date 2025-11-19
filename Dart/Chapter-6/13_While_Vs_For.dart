import 'dart:io';

void main() {
  bool condition = true;
  while (condition) {
    print("Enter your password");
    var input = stdin.readLineSync();

    if (input == "123") {
      condition = false;
      print("Hello, Welcome Back!");
    } else {
      print("Wrong password , try again");
    }
  }

  print("----------------------");

  bool c2 = true;
  while (c2) {
    print("Enter Your Name");
    var input = stdin.readLineSync();
    if (input == "Andrew") {
      c2 = false;
      print("***First Step Complete***");
    } else {
      print("Your name is incorrect,try again.");
    }
  }

  print("----------------------");

  var c3 = true;
  do {
    print("Enter Your ID");
    var input = stdin.readLineSync();
    if (input == "28") {
      c3 = false;
      print("Your ID is correct -> Go to Main Page!");
    } else {
      print("Your ID is wrong,Too many attempts -> try again tomorrow");
    }
  } while (c3);
}
/*
  print("How old are you?");
  var age = stdin.readLineSync()!;
  var agey = int.parse(age);
  var i = 0;
  while (i < agey) {
    print(i);
    i++;
  }
  for (var t=0;t<agey;t++){
  print(t);
  }
*/

/*
  var age = stdin.readLineSync(); => stdin.readLineSync() returns String? (nullable String), meaning it can be null.
  var agey = int.parse(age); => will show error at (age) inside of int.parse -> int.parse() requires String (non-nullable) and does NOT accept null.

  Method 1: Using ! (Null assertion)
  import 'dart:io';

  void main() {
    print("How old are you?");
    var age = stdin.readLineSync()!;  // ! tells Dart "this is definitely not null"
    var agey = int.parse(age);
    print("Your age is $agey");
  }
  Note: ! asserts that the value is NOT null.

  Method 2: Using ?? (Null coalescing) 
  import 'dart:io';

  void main() {
    print("How old are you?");
    var age = stdin.readLineSync() ?? "";  // If null, use empty string
    var agey = int.parse(age);
    print("Your age is $agey");
  }
  Note: Provides a default value if null.

  Method 3: Using if-else 
  import 'dart:io';

  void main() {
    print("How old are you?");
    var age = stdin.readLineSync();
    
    if (age != null) {
      var agey = int.parse(age);
      print("Your age is $agey");
    } else {
      print("No input received");
    }
  }
  Note: Checks for null before parsing - most secure approach.

  Method 4: Using try-catch 
  import 'dart:io';

  void main() {
    print("How old are you?");
    var age = stdin.readLineSync();
    
    try {
      var agey = int.parse(age!);  // Check null and parse
      print("Your age is $agey");
    } catch (e) {
      print("Invalid input! Please enter a number.");
    }
  }
  Note: Catches errors gracefully and shows user-friendly message.

  Method 5: Complete Validation 
  import 'dart:io';

  void main() {
    print("How old are you?");
    var age = stdin.readLineSync();
    
    if (age == null || age.isEmpty) {
      print("Please enter your age!");
      return;
    }
    
    try {
      var agey = int.parse(age);
      
      if (agey < 0 || agey > 150) {
        print("Please enter a valid age!");
        return;
      }
      
      print("Your age is $agey");
    } catch (e) {
      print("Please enter a valid number!");
    }
  }

*/
