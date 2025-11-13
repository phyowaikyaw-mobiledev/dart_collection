void main() {
  int num1 = 20;
  int num2 = 42;

  int sum = num1 + num2;
  int reduce = num2 - num1;
  int multiply = num1 * num2;
  double divide = num2 / num1;
  int divided = num2 ~/ num1;
  int modulo = num2 % num1;

  print(sum);
  print(reduce);
  print(multiply);
  print(divide);
  print(divided);
  print(modulo);

  int count = 0;

  // Prefix increment (increments then returns)
  print(++count); // 1

  // Postfix increment (returns then increments)
  print(count++); // 1
  print(count); // 2

  // Prefix decrement
  print(--count); // 1

  // Postfix decrement
  print(count--); // 1
  print(count); // 0
}

/*
    Arithmatics Operators
    + => Addition
    - => Subtraction
    * => Multiplication
    / => Division
   ~/ => Inter Division (returns int)
    % => Modulo (remainder)

    Key Points

    / always returns a double, even with integers
    ~/ performs integer division (truncates the result)
    % returns the remainder of division

*/
