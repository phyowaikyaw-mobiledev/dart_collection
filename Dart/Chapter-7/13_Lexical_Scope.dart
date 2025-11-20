var gScope = "This is in Global Scope"; // Lexical Scope / Global Scope
void main() {
  // outer function main()
  var lScope = "This is in Local Scope"; // Lexical Scope of Main
  print(gScope);

  f1() {
    // inner function
    var f1Scope =
        "This is in Local Scope of f1 function"; // Lexical Scope for f1 function.
    print(lScope);
  }

  // print(f1Scope); => Outer function cannot use by calling inner function local scope.
}

// Nested Function -> void main(){second(){third(){}}}
/*
  second() {
    third() {
      print("Third Function");
    }

    print("Second Function");
    third();
  }

  print("Main Function");
  second();

*/
