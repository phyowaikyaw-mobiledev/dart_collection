void main() {
  bool isStudent = true;
  bool isAdult = false;
  bool hasPermission = true;
  print(isStudent);
  print(isAdult);
  print(hasPermission);

  // Type inference
  var isActive = true; // Dart knows boolean.
  print(isActive);
}

/*
    Boolean in Dart

    -bool is a data type that holds only two values: true or false
    -Used for conditional logic and decision making
    -Named after mathematician George Boole

    Keypoint Summary

    - Only true or false
    - Used in if, while, for statements
    - Result of comparisons (==, !=, >, <, >=, <=)
    - Logical operators: && (AND), || (OR), ! (NOT)
    - Cannot use 0/1 or "yes"/"no" like other languages
*/
