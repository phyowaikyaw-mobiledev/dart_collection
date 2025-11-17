// ignore_for_file: dead_code

void main() {
  print('=== OPERATOR PRECEDENCE EXAMPLES ===\n');

  // Example 1: Arithmetic operators
  print('1. Arithmetic Precedence:');
  int result1 = 5 + 3 * 2;
  print('5 + 3 * 2 = $result1'); // 11 (not 16)
  print('Because: 5 + (3 * 2) = 5 + 6 = 11\n');

  // Example 2: Parentheses change order
  print('2. Using Parentheses:');
  int result2 = (5 + 3) * 2;
  print('(5 + 3) * 2 = $result2'); // 16
  print('Parentheses have highest precedence\n');

  // Example 3: Multiple operators
  print('3. Complex Expression:');
  int result3 = 10 + 5 * 2 - 3;
  print('10 + 5 * 2 - 3 = $result3');
  print('Step by step:');
  print('  First: 5 * 2 = 10');
  print('  Then: 10 + 10 = 20');
  print('  Finally: 20 - 3 = 17\n');

  // Example 4: Division and multiplication
  print('4. Division and Multiplication (same precedence, left to right):');
  int result4 = 20 ~/ 4 * 2;
  print('20 ~/ 4 * 2 = $result4');
  print('Evaluated left to right: (20 ~/ 4) * 2 = 5 * 2 = 10\n');

  // Example 5: Relational operators
  print('5. Relational and Logical:');
  bool result5 = 5 + 3 > 7 && 10 - 2 == 8;
  print('5 + 3 > 7 && 10 - 2 == 8 = $result5');
  print('Step by step:');
  print('  First: 5 + 3 = 8');
  print('  Then: 10 - 2 = 8');
  print('  Then: 8 > 7 = true');
  print('  Then: 8 == 8 = true');
  print('  Finally: true && true = true\n');

  // Example 6: Logical operators
  print('6. Logical AND vs OR:');
  bool result6 = true || false && false;
  print('true || false && false = $result6');
  print('&& has higher precedence than ||');
  print('So: true || (false && false) = true || false = true\n');

  // Example 7: Assignment is lowest
  print('7. Assignment (lowest precedence):');
  int x = 5 + 3 * 2;
  print('int x = 5 + 3 * 2');
  print('First calculates: 5 + 3 * 2 = 11');
  print('Then assigns: x = 11');
  print('x = $x\n');

  // Example 8: Increment operators
  print('8. Increment Operators:');
  int a = 5;
  int result8 = a++ * 2;
  print('a = 5');
  print('result = a++ * 2');
  print('Postfix a++ returns old value first');
  print('So: result = 5 * 2 = $result8');
  print('Then a becomes: $a\n');

  int b = 5;
  int result9 = ++b * 2;
  print('b = 5');
  print('result = ++b * 2');
  print('Prefix ++b increments first');
  print('So: result = 6 * 2 = $result9');
  print('b = $b\n');

  // Example 9: Null-aware operator
  print('9. Null-aware Operator:');
  String? name;
  String greeting = 'Hello ' + (name ?? 'Guest');
  print('name = null');
  print('greeting = "Hello " + (name ?? "Guest")');
  print('Result: $greeting\n');

  // Example 10: Ternary operator
  print('10. Ternary Operator:');
  int age = 20;
  String status = age >= 18 ? 'Adult' : 'Minor';
  print('age = 20');
  print('status = age >= 18 ? "Adult" : "Minor"');
  print('First: 20 >= 18 = true');
  print('Then: returns "Adult"');
  print('Result: $status\n');

  // Example 11: Common mistake
  print('11. Common Mistake:');
  print('Without parentheses:');
  print('5 + 3 > 7 && 2 + 2 == 4 evaluates as:');
  print('(5 + 3) > 7 && (2 + 2) == 4');
  print('= 8 > 7 && 4 == 4');
  print('= true && true');
  print('= ${5 + 3 > 7 && 2 + 2 == 4}\n');

  // Example 12: Best practice
  print('12. Best Practice - Use Parentheses for Clarity:');
  int result12a = 5 + 3 * 2; // Works but less clear
  int result12b = 5 + (3 * 2); // More readable
  print('result = 5 + 3 * 2 = $result12a (works but unclear)');
  print('result = 5 + (3 * 2) = $result12b (clearer intent)');

  print('\n=== KEY TAKEAWAYS ===');
  print('1. Parentheses () have the highest precedence');
  print('2. * / % have higher precedence than + -');
  print('3. Arithmetic before comparison before logical');
  print('4. Assignment = has the lowest precedence');
  print('5. When in doubt, use parentheses for clarity!');
}

/*
==========================================
DART OPERATOR PRECEDENCE (Highest to Lowest)
==========================================

PRECEDENCE 1 (HIGHEST)
  Operator: ()
  Description: Parentheses / Grouping
  Example: (5 + 3) * 2

PRECEDENCE 2
  Operator: . ?. []
  Description: Member access, null-aware access, subscript
  Example: obj.method()  list[0]  obj?.field

PRECEDENCE 3
  Operator: x++  x--
  Description: Postfix increment/decrement
  Example: count++  index--

PRECEDENCE 4
  Operator: -x  !x  ~x  ++x  --x
  Description: Unary operators (prefix)
  Example: -5  !isValid  ++count

PRECEDENCE 5
  Operator: *  /  %  ~/
  Description: Multiplicative operators
  Example: 5 * 3  10 / 2  7 % 3  10 ~/ 3

PRECEDENCE 6
  Operator: +  -
  Description: Additive operators
  Example: 5 + 3  10 - 2

PRECEDENCE 7
  Operator: <<  >>  >>>
  Description: Shift operators
  Example: 8 << 2  16 >> 1

PRECEDENCE 8
  Operator: &
  Description: Bitwise AND
  Example: 5 & 3

PRECEDENCE 9
  Operator: ^
  Description: Bitwise XOR
  Example: 5 ^ 3

PRECEDENCE 10
  Operator: |
  Description: Bitwise OR
  Example: 5 | 3

PRECEDENCE 11
  Operator: >=  >  <=  <  as  is  is!
  Description: Relational and type test operators
  Example: x > 5  obj is String  x >= 10

PRECEDENCE 12
  Operator: ==  !=
  Description: Equality operators
  Example: x == 5  y != 0

PRECEDENCE 13
  Operator: &&
  Description: Logical AND
  Example: x > 0 && y < 10

PRECEDENCE 14
  Operator: ||
  Description: Logical OR
  Example: x < 0 || y > 10

PRECEDENCE 15
  Operator: ??
  Description: If-null operator
  Example: name ?? 'Guest'

PRECEDENCE 16
  Operator: ? :
  Description: Conditional (ternary) operator
  Example: age >= 18 ? 'Adult' : 'Minor'

PRECEDENCE 17
  Operator: ..  ?..
  Description: Cascade notation
  Example: obj..method1()..method2()

PRECEDENCE 18 (LOWEST)
  Operator: =  *=  /=  +=  -=  &=  ^=  |=  <<=  >>=  ??=
  Description: Assignment operators
  Example: x = 5  y += 3  z ??= 10

==========================================
KEY CONCEPTS
==========================================

1. HIGHER PRECEDENCE = EVALUATED FIRST
   Example: 5 + 3 * 2
   Result: 11 (not 16)
   Because: * is evaluated before +
   So: 5 + (3 * 2) = 5 + 6 = 11

2. PARENTHESES () OVERRIDE ALL PRECEDENCE
   Example: (5 + 3) * 2
   Result: 16
   Because: parentheses force addition first
   So: (5 + 3) * 2 = 8 * 2 = 16

3. SAME PRECEDENCE? LEFT TO RIGHT
   Example: 20 / 4 * 2
   Result: 10
   Because: / and * have same precedence
   So: (20 / 4) * 2 = 5 * 2 = 10

4. ASSIGNMENT IS ALWAYS LAST
   Example: int x = 5 + 3 * 2
   Steps:
   - First: 3 * 2 = 6
   - Then: 5 + 6 = 11
   - Finally: x = 11

==========================================
COMMON GROUPS (Easy to Remember)
==========================================

GROUP 1: ARITHMETIC (Traditional Math Order)
  Highest → Lowest:
  1. * / % ~/  (multiply, divide, modulo)
  2. + -       (add, subtract)

GROUP 2: COMPARISON
  >=  >  <=  <  ==  !=

GROUP 3: LOGICAL
  Highest → Lowest:
  1. &&  (AND)
  2. ||  (OR)

GROUP 4: COMPLETE ORDER FOR MOST COMMON OPERATIONS
  1. ()           Parentheses
  2. * / % ~/     Multiplication/Division
  3. + -          Addition/Subtraction
  4. > >= < <=    Relational
  5. == !=        Equality
  6. &&           Logical AND
  7. ||           Logical OR
  8. ? :          Ternary
  9. =            Assignment

==========================================
PRACTICAL EXAMPLES
==========================================

Example 1: Basic Arithmetic
  Code: 5 + 3 * 2
  Steps:
    - 3 * 2 = 6
    - 5 + 6 = 11
  Result: 11

Example 2: With Parentheses
  Code: (5 + 3) * 2
  Steps:
    - (5 + 3) = 8
    - 8 * 2 = 16
  Result: 16

Example 3: Comparison and Arithmetic
  Code: 5 + 3 > 7
  Steps:
    - 5 + 3 = 8
    - 8 > 7 = true
  Result: true

Example 4: Logical with Comparison
  Code: 5 > 3 && 10 < 20
  Steps:
    - 5 > 3 = true
    - 10 < 20 = true
    - true && true = true
  Result: true

Example 5: Complex Expression
  Code: 10 + 5 * 2 - 3 > 15 && 20 / 4 == 5
  Steps:
    - 5 * 2 = 10
    - 10 + 10 = 20
    - 20 - 3 = 17
    - 20 / 4 = 5
    - 17 > 15 = true
    - 5 == 5 = true
    - true && true = true
  Result: true

==========================================
BEST PRACTICES
==========================================

✓ DO: Use parentheses for clarity
  Good: result = (a + b) * c
  Bad:  result = a + b * c  (works but unclear)

✓ DO: Break complex expressions into multiple lines
  Good:
    int sum = a + b;
    int result = sum * c;
  
  Bad:
    int result = a + b * c / d - e + f;

✓ DO: Remember PEMDAS from school
  Parentheses → Multiply/Divide → Add/Subtract

✗ DON'T: Rely on memorizing the full table
  Use parentheses when you're not 100% sure

✗ DON'T: Write overly complex single-line expressions
  Break them down for readability

==========================================
QUICK REFERENCE SUMMARY
==========================================

Highest:  ()
High:     * / % ~/
Medium:   + -
Lower:    > >= < <= == !=
Lower:    &&
Lower:    ||
Lowest:   = += -= *= /=

==========================================
*/
