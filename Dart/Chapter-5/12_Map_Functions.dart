void main() {
  // Map Functions
  var user = {
    "name": "Mg Mg",
    "age": 23,
    "city": "Bangkok",
    404: "Page Not Found",
  };
  user.remove("name");
  print(user);
  user.forEach((key, value) => print("kye is $key and value is $value"));
  user.clear();
  print(user);
}

/*
     var user = {
    "names": "Mg Mg",
    "age": 23,
    "city": "Bangkok",
    404: "Page Not Found",
  };
  var admin = {"permit": "Admin", "price": 220, 223: "Crics"};
  admin.addAll(user); => using addAll method/function 
  print(admin); 
*/
