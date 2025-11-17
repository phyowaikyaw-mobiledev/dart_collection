void main() {
  // fixed length list
  var names = List.filled(3, "");
  names[1] = "Andrew"; // Can't add/remove, only modify and update
  print(names);

  // Growable List
  var user = ["Mg Mg", "Aung Aung"]; // Literal
  var user1 = []; // Empty growable
  var user2 = List.empty(growable: true); // Explicit
  print(user);
  print(user1);
  print(user2);

  // Typed List
  List<String> username = ["Morgan"]; // Only strings allowed
  List<String> nrc = []; // Best - simple and clean => *** Very Simple
  nrc.add("OnlyOneNationalCard");
  print(username);
  print(nrc);
  // List<String> pass1 = <String>[]; => Explicit type
  // List<String> pass2 = List<String>.empty(growable: true);  => Verbose

  List<int> pass = [];
  pass.add(01203);
  print(pass);

  // 1. Growable List with dynamic type
  var nums = ["One", 2, "Three", 3.3];
  print(nums); // [One, 2, Three, 3.3]

  // 2. Growable List with fixed Type (double)
  List<double> test = [];
  test.add(1.5);
  test.add(2.7);
  print(test); // [1.5, 2.7]

  // 3. Growable List with Dynamic Type
  var cars = [];
  cars.add("Toyota");
  cars.add(2024);
  print(cars); // [Toyota, 2024]

  // 4. Fixed-length List (3 elements)
  var cities = List.filled(3, '');
  cities[0] = "Yangon";
  cities[1] = "Mandalay";
  cities[2] = "Naypyidaw";
  print(cities); // [Yangon, Mandalay, Naypyidaw]
}

/* List =>
  - Fixed length List
  - Growable List 
  - Typed List
*/
