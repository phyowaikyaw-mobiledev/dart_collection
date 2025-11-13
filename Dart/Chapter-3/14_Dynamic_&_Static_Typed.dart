void main() {
  // Dynamic Typed Programming Language (type checked at runtime)
  // [Python,JavaScript,Ruby,Php,Perl,Lua,R,Groovy,Elixir,Clojure,Lisp,Scheme,Julia,MATLAB,VBScript,Smalltalk]
  // Dart is Statically Typed Language but Dart also can say dynamically type cause of having type inference feature.
  // Type is checked at runtime. No need to declare type when declaring variables. Errors are known only when program runs.
  // More flexibility. Code writing is easier and faster.
  // Key Point: When using var, Dart determines the type at compile time. Once determined, it cannot be changed.

  var name = "Andrew";
  var age = 23;
  var height = 6.1;

  print(name);
  print(age);
  print(height);

  // Statically Typed Programming Language (type checked at compile time)
  // [Java,C,C++,C#,Go(Golang),Rust,Swift,Kotlin,TypeScript,Scala,Haskella,Dart,F#,Pascal,Fortran,Ada]
  // Dart is Both.
  // Type is checked at compile time. Must declare type when declaring variables. Errors are caught early.
  // Faster speed. Must always write types when coding.

  String Newname = "Andrew the Coder";
  int Newage = 23;
  double Newheight = 6.1;

  print(Newname);
  print(Newage);
  print(Newheight);
}

  // Both (Optional/Gradual Typing) (supports both types)
  // Python (with type hints)
  // JavaScript (when using TypeScript)
  // PHP (has type declarations in version 7+)
  // Hack (PHP's statically typed variant)
  // Dart