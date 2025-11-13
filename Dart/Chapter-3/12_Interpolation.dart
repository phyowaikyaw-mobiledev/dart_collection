void main() {
  var name = "Andrew";
  var city = "Bangkok";

  print(" Name is " + name + " and City is " + city); // concatinate
  print("Name is $name & City is $city"); // interpolate
  print(
    "Name is ${name.toUpperCase()} & City is ${city.toLowerCase()}",
  ); // interpolate $ using with method
}
