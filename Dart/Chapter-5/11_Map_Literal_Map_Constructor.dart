void main() {
  // Create Map with => Map Literal & Map Constructor
  var user = {
    "name": "Mg Mg",
    "age": 23,
    "city": "Yangon",
    "PostCode": 3210,
  }; // Map Literal

  var admin = new Map(); // Constructor Base Map
  admin["name"] = "Agga";
  admin["age"] = 24;
  admin["city"] = "Mandalay";
  admin["PostCode"] = 1230;
  print(user);
  print(admin);
}
