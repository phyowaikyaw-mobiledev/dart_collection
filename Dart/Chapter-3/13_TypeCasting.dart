void main() {
  var age = 23; // Number
  var Stringage = age.toString(); // Integer to String "23" => String data type

  var name = "20"; // String data type
  int Intname = int.parse(name); // String to Integer 20 => Integer data type

  var student = "RIT";
  var height = 5;

  print(
    " Student name is " + student + " and his height is " + height.toString(),
  ); // concatinate
  print(" Student name is $student and his height is $height"); // interpolate

  // print(age.runtimeType);
  print(Stringage.runtimeType);
  print(Intname.runtimeType);
}

// Typecasting is the process of converting a variable from one data type to another data type.
// In Dart, it's also called type conversion or type casting.
