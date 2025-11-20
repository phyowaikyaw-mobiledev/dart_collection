void main() {
  simpleParameter(23, "Andrew");
  simpleParameterWithDataType("Andrew", 23);
  namedParameter(name: "Andrew", age: 23);
  namedParameterWithDefaultValue(city: "Chonburi, LaemchaBang, Thailand");
}

void simpleParameter(name, age) {
  print("Name is $name & Age is $age");
}

void simpleParameterWithDataType(String name, int age) {
  print("Name is $name & Age is $age");
}

void namedParameter({name, age}) {
  print("Name is $name & Age is $age");
}

void namedParameterWithDefaultValue({
  name = "Andrew",
  age = 23,
  city = "Bangkok",
}) {
  print("Name is $name & Age is $age & city is $city");
}
