void main() {
  //Assignment Operators
  var num;
  num ??= 20;
  print(num);

  var value1;
  var value2 = 30;
  //Syntax
  var result = value1 ?? value2;
  print(result);

  String? name = null;
  String displayName = name ?? "Guest"; // displayName = "Guest"
  print(displayName);
  String? name2 = "John";
  String displayName2 = name2 ?? "Guest"; // displayName2 = "John"
  print(displayName2);

  // Related operator ??= (null-aware assignment): Assigns a value only if the variable is currently null.

  String? username;
  username ??= "DefaultUser"; // username = "DefaultUser"
  username ??= "AnotherUser"; // username stays "DefaultUser" (not null)

  // Key point: It's a shorthand for checking null before assigning/using a value.
}

/*

 // ?? =>  The ?? operator in Dart is called the null-coalescing operator or if-null operator.
           What it does:
           Returns the left value if it's NOT null, otherwise returns the right value.
             
          var num = 20;
          //num = num + 5; <=> num += 5;
          //num = num - 5; <=> num -= 5;
          //num = num * 5; <=> num *= 5;
          //num = num ~/ 5; <=> num ~/=5;
          num ~/= 5;

          print(num);
*/
