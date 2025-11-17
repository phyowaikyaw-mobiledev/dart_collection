// Type Test Operators: is and is!

void main() {
  // is Operator
  // Checks if an object is of a specific type. Returns true or `false.
  var name = 'John';
  print(name is String); // true
  print(name is int); // false

  dynamic value = 42;
  if (value is int) {
    print('It\'s an integer');
  }

  /*
    Key points:

    Returns boolean (true/false)
    Non-destructive check - doesn't change anything
    Works with nullable types: if (value is String?) */

  // is! Operator
  // Checks if an object is NOT of a specific type. It's the opposite of is.

  var age = 25;
  print(age is! String); // true (age is NOT a String)
  print(age is! int); // false (age IS an int)

  dynamic data = 'Hello';
  if (data is! int) {
    print('Not an integer'); // This prints
  }

  /*
  Key points:

  Returns boolean (true/false)
  Shorthand for !(value is Type)
  More readable than using negation
  */
}
