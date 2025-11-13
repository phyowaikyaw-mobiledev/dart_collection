void main() {
  var name = "Andrew"; // implicitly type -> compiler infers type automatically
  String name2 = "Andrew"; // explicitly specifying type -> We specify directly

  var age = 23; // it will be integer type
  int result = 5 + 3;

  print(name.runtimeType);
  print(name2);
  print(age.runtimeType);
  print(result);
}

/* Type Inference is a feature where the compiler or interpreter automatically determines and 
  assigns the data type of a variable based on the value assigned to it, 
  without requiring the programmer to explicitly declare the type.

  Dart automatically infers this as String => Type Inferred -> "Andrew" = name -> String...

  var -> Token
  name -> Token
  = -> Token
  "Andrew" -> Token
  ; -> Token

  Operands - Operands are the values or variables on which an operation is performed in an expression.

  int result = 5 + 3;
               ↑   ↑
              operands (5 and 3 are operands )
                 ↑
              operator (+ is operator)

  Note:

  Operand = the thing being operated on. (5,3)
  Operator = the operation symbol (+, -, *, /) 

   */
