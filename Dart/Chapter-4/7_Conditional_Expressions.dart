void main() {
  // Conditional Expressions
  // Ternary Operator ? :
  // Returns one of two values based on a condition.
  // condition ? valueIfTrue : valueIfFalse;

  int age = 20;
  String status = age >= 18 ? "Adult" : "Minor"; // "Adult"
  print(status);

  // Null-Coalescing Operator ??
  // Returns the left value if NOT null, otherwise the right value
  // value1 ?? value2;

  String? name = null;
  String display = name ?? "Guest"; // "Guest"
  print(display);
}

/*
  Key Differences:
  Operator                        PurposeUse                                            Case
      ? :         Choose between two values based on any boolean condition    General conditional logic
      ??          Choose between two values based on null check only          Handle null values

  When to use:

  Use ? : for general conditions (greater than, equals, etc.)
  Use ?? specifically for null checking (cleaner & shorter)
*/
