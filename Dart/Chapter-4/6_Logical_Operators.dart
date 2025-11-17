void main() {
  var name = "Mg Mg";
  var age = 23;
  bool married = true;

  var user =
      name == "Mg Mg" &&
      age ==
          23; // Both side of && AND operators must true value; then work and output true if not false;
  print(user);
  var user1 =
      name == "Ag Ag" ||
      age ==
          23; // One side of || OR operators must true ; then work and output true; if not flase;
  print(user1);
  var girlis = !married;
  print(girlis);
  var she = !girlis;
  print(she);
  // ! NOT operators -> opposite meaning of the value when you assign with !;
}
